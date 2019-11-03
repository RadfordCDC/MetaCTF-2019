.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;,
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$Duration;,
        Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field final managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final targetParent:Landroid/view/ViewGroup;

.field protected final view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 180
    new-array v0, v1, [I

    sget v1, Landroid/support/design/R$attr;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 183
    new-instance v0, Landroid/os/Handler;

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 176
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentViewCallback"    # Landroid/support/design/snackbar/ContentViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v4, 0x1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transient bottom bar must have non-null parent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    if-nez p2, :cond_1

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transient bottom bar must have non-null content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1
    if-nez p3, :cond_2

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transient bottom bar must have non-null callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_2
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 253
    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 256
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 258
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 263
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 266
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 269
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 270
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 287
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 308
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 310
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/snackbar/ContentViewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v2, 0x0

    .line 612
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 613
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 614
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$11;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$11;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 647
    return-void
.end method

.method private getTranslationYBottom()I
    .locals 3

    .prologue
    .line 650
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v1

    .line 651
    .local v1, "translationY":I
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 652
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 653
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 655
    :cond_0
    return v1
.end method


# virtual methods
.method public addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-object p0

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 412
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method animateViewIn()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v4, 0x0

    .line 566
    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v1

    .line 567
    .local v1, "translationYBottom":I
    sget-boolean v2, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v2, :cond_0

    .line 568
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 573
    :goto_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 574
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 575
    sget-object v2, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v2, p0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void

    .line 570
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 390
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 391
    return-void
.end method

.method protected dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 394
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 395
    return-void
.end method

.method public getBehavior()Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 348
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method protected getNewBehavior()Landroid/support/design/widget/SwipeDismissBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/SwipeDismissBehavior",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method protected getSnackbarBaseLayoutResId()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->hasSnackbarStyleAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/design/R$layout;->mtrl_layout_snackbar:I

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/support/design/R$layout;->design_layout_snackbar:I

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method protected hasSnackbarStyleAttr()Z
    .locals 6

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 323
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    sget-object v4, Landroid/support/design/widget/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 324
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 325
    .local v1, "snackbarStyleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    if-eq v1, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 659
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 438
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .prologue
    .line 446
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 681
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 682
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 685
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 686
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 687
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v3, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 686
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 691
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 692
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 693
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_1
    return-void
.end method

.method onViewShown()V
    .locals 4

    .prologue
    .line 668
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 669
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 674
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 673
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 677
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object p0

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBehavior(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 0
    .param p1, "behavior"    # Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    .line 359
    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    .line 338
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 4

    .prologue
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v2, 0x1

    .line 699
    const/4 v0, 0x1

    .line 700
    .local v0, "feedbackFlags":I
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 701
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 702
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 385
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getDuration()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 386
    return-void
.end method

.method final showView()V
    .locals 5

    .prologue
    .line 468
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 469
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 471
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 473
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 475
    .local v1, "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-nez v3, :cond_3

    .line 476
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getNewBehavior()Landroid/support/design/widget/SwipeDismissBehavior;

    move-result-object v0

    .line 478
    .local v0, "behavior":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<+Landroid/view/View;>;"
    :goto_0
    instance-of v3, v0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 479
    check-cast v3, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-static {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->access$000(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 481
    :cond_0
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/SwipeDismissBehavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 506
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 508
    const/16 v3, 0x50

    iput v3, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 511
    .end local v0    # "behavior":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<+Landroid/view/View;>;"
    .end local v1    # "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v4, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 537
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 538
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    .line 563
    :goto_1
    return-void

    .line 476
    .restart local v1    # "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    goto :goto_0

    .line 543
    .end local v1    # "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_1

    .line 547
    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v4, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    goto :goto_1
.end method
