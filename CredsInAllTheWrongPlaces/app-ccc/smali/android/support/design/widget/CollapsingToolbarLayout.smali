.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarDirectChild:Landroid/view/View;

.field private toolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput-boolean v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 138
    iput v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 157
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 158
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    sget-object v2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_CollapsingToolbar:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 161
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 168
    .local v6, "a":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v2, 0x800053

    .line 169
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 172
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v2, 0x800013

    .line 173
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 177
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 181
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 184
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    .line 186
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 188
    :cond_0
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    .line 190
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 192
    :cond_1
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    .line 194
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 196
    :cond_2
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    .line 198
    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 201
    :cond_3
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 202
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/design/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 207
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 211
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 213
    invoke-virtual {v6, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 215
    :cond_4
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v1, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 217
    invoke-virtual {v6, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 220
    :cond_5
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    .line 221
    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 223
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v1, 0x258

    .line 224
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 228
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 229
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 231
    sget v0, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    .line 233
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    invoke-virtual {p0, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 237
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 245
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .prologue
    .line 609
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 610
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 611
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 612
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 613
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-le p1, v0, :cond_1

    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 628
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 629
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 630
    return-void

    .line 613
    :cond_1
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    if-nez v4, :cond_0

    .line 380
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 354
    iput-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 356
    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 358
    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 359
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 360
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 364
    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v4, :cond_3

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 369
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 371
    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 375
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iput-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 378
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 379
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    goto :goto_0

    .line 368
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 390
    move-object v0, p1

    .line 391
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 392
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 393
    check-cast v0, Landroid/view/View;

    .line 391
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 508
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 509
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 510
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 512
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 516
    sget v1, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ViewOffsetHelper;

    .line 517
    .local v0, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 518
    new-instance v0, Landroid/support/design/widget/ViewOffsetHelper;

    .end local v0    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    invoke-direct {v0, p0}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 519
    .restart local v0    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    sget v1, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 521
    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne v2, p0, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eq p1, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .prologue
    .line 1241
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1242
    return-void
.end method

.method private updateDummyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 400
    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 403
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 409
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 411
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 415
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1100
    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 304
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v2, :cond_0

    .line 305
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 306
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 315
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v2, :cond_2

    .line 316
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 317
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_2

    .line 318
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    .end local v0    # "topInset":I
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "invalidated":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    const/4 v0, 0x1

    .line 336
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 734
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 736
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    .line 737
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 739
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 740
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 743
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 744
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 747
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 748
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 751
    :cond_2
    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 754
    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1105
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1110
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1115
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 931
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1234
    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v1

    .line 1235
    .local v1, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1236
    .local v0, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .prologue
    .line 1095
    iget-wide v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .prologue
    .line 1064
    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v2, :cond_0

    .line 1066
    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 1080
    :goto_0
    return v2

    .line 1070
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 1072
    .local v0, "insetTop":I
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 1073
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1075
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1070
    .end local v0    # "insetTop":I
    .end local v1    # "minHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1080
    .restart local v0    # "insetTop":I
    .restart local v1    # "minHeight":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 252
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 255
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 257
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 260
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 263
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 265
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 275
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 437
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_1

    .line 439
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 440
    .local v2, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 441
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 446
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 440
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "insetTop":I
    .end local v5    # "z":I
    :cond_1
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 456
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 457
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 459
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v6, :cond_2

    .line 461
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v3, 0x1

    .line 464
    .local v3, "isRtl":Z
    :goto_2
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 465
    :goto_3
    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    .line 466
    .local v4, "maxOffset":I
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v6, v7}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 467
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 468
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_4
    add-int/2addr v8, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 469
    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_7

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 470
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    :goto_5
    add-int/2addr v6, v10

    iget-object v10, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    iget-object v11, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 471
    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 467
    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 474
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_8

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    :goto_6
    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    add-int/2addr v9, v7

    sub-int v10, p4, p2

    if-eqz v3, :cond_9

    iget v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    :goto_7
    sub-int v7, v10, v7

    sub-int v10, p5, p3

    iget v11, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v6, v9, v7, v10}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 480
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 486
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    .restart local v5    # "z":I
    :goto_8
    if-ge v1, v5, :cond_a

    .line 487
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 457
    .end local v1    # "i":I
    .end local v5    # "z":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 461
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 464
    .restart local v3    # "isRtl":Z
    :cond_5
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    goto/16 :goto_3

    .line 468
    .restart local v4    # "maxOffset":I
    :cond_6
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_4

    .line 470
    :cond_7
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    goto :goto_5

    .line 474
    :cond_8
    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_6

    :cond_9
    iget v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    goto :goto_7

    .line 491
    .end local v3    # "isRtl":Z
    .end local v4    # "maxOffset":I
    .restart local v1    # "i":I
    .restart local v5    # "z":I
    :cond_a
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v6, :cond_d

    .line 492
    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 494
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    :cond_b
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne v6, p0, :cond_e

    .line 497
    :cond_c
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 503
    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 504
    return-void

    .line 499
    :cond_e
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 420
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 422
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 423
    .local v0, "mode":I
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 424
    .local v1, "topInset":I
    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 429
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 431
    :cond_0
    return-void

    .line 423
    .end local v1    # "topInset":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 342
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    move-object v0, p1

    .line 287
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 289
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 846
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 817
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 818
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 826
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 827
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 836
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 910
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 911
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 656
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 657
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 660
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 661
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 663
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 664
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 666
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 668
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 678
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 679
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 690
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 873
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 874
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 893
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 948
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 949
    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 950
    iput p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 951
    iput p4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 952
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 953
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1035
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 1036
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1037
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1014
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 1015
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 1016
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 972
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 973
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 974
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 993
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 994
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 995
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 865
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 883
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 925
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 926
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 633
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-eq p1, v1, :cond_1

    .line 634
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 635
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 638
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    .line 639
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 641
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1090
    iput-wide p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 1091
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1050
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1051
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 1053
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1055
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 585
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 3
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 598
    iget-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimsAreShown:Z

    if-eq v2, p1, :cond_0

    .line 599
    if-eqz p2, :cond_2

    .line 600
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 604
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 606
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 600
    goto :goto_0

    .line 602
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 714
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    .line 715
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 718
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 719
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 723
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 724
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 725
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 726
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 728
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 730
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 724
    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 784
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 785
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 796
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 534
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 558
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 559
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 560
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 561
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 563
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 763
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 765
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 766
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 767
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 769
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 770
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 772
    :cond_1
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v1

    .line 765
    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1229
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1231
    :cond_1
    return-void

    .line 1229
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
