.class public Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
.super Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/behavior/HideBottomViewOnScrollBehavior",
        "<",
        "Landroid/support/design/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final fabContentRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>()V

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 694
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 704
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 705
    return-void
.end method

.method private updateFabPositionAndVisibility(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 2
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;
    .param p2, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 709
    .line 710
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 711
    .local v0, "fabLayoutParams":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 714
    invoke-static {p2, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1000(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V

    .line 716
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 722
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 723
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 724
    invoke-direct {p0, v0, p2}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->updateFabPositionAndVisibility(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z

    .line 725
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 726
    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->setFabDiameter(I)V

    .line 731
    :cond_0
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1200(Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    invoke-static {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1300(Landroid/support/design/bottomappbar/BottomAppBar;)V

    .line 736
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 737
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 687
    check-cast p2, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "directTargetChild"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axes"    # I
    .param p6, "type"    # I

    .prologue
    .line 749
    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->getHideOnScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-super/range {p0 .. p6}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    .line 750
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 687
    move-object v2, p2

    check-cast v2, Landroid/support/design/bottomappbar/BottomAppBar;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method protected slideDown(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 6
    .param p1, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    .line 770
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 771
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 772
    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 773
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 775
    .local v1, "fabShadowPadding":F
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 776
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 777
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 778
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xaf

    .line 779
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 781
    .end local v1    # "fabShadowPadding":F
    :cond_0
    return-void
.end method

.method protected bridge synthetic slideDown(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->slideDown(Landroid/support/design/bottomappbar/BottomAppBar;)V

    return-void
.end method

.method protected slideUp(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 4
    .param p1, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .prologue
    .line 756
    invoke-super {p0, p1}, Landroid/support/design/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 757
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1100(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    .line 758
    .local v0, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->clearAnimation()V

    .line 760
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 761
    invoke-static {p1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$1400(Landroid/support/design/bottomappbar/BottomAppBar;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 762
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe1

    .line 763
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 765
    :cond_0
    return-void
.end method

.method protected bridge synthetic slideUp(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->slideUp(Landroid/support/design/bottomappbar/BottomAppBar;)V

    return-void
.end method
