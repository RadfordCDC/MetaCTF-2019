.class public Landroid/support/design/widget/FloatingActionButton$BaseBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private autoHideEnabled:Z

.field private internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 882
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 884
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 887
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 888
    sget-object v1, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    .line 889
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 890
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v2, 0x1

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 894
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 895
    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 945
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 946
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    instance-of v1, v1, Landroid/support/design/widget/BottomSheetBehavior;

    .line 948
    :goto_0
    return v1

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 1062
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iget-object v3, p2, Landroid/support/design/widget/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 1064
    .local v3, "padding":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-lez v4, :cond_3

    .line 1066
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1068
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v2, 0x0

    .line 1069
    .local v2, "offsetTB":I
    const/4 v1, 0x0

    .line 1071
    .local v1, "offsetLR":I
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 1073
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 1078
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 1080
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1086
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1087
    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1089
    :cond_2
    if-eqz v1, :cond_3

    .line 1090
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1093
    .end local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "offsetLR":I
    .end local v2    # "offsetTB":I
    :cond_3
    return-void

    .line 1074
    .restart local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v1    # "offsetLR":I
    .restart local v2    # "offsetTB":I
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v4, v5, :cond_0

    .line 1076
    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v4

    goto :goto_0

    .line 1081
    :cond_5
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v5, :cond_1

    .line 1083
    iget v4, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v4

    goto :goto_1
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 4
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    const/4 v1, 0x0

    .line 957
    .line 958
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 959
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    if-nez v2, :cond_1

    .line 975
    :cond_0
    :goto_0
    return v1

    .line 963
    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 970
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 975
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "child"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    const/4 v1, 0x0

    .line 980
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 999
    :goto_0
    return v1

    .line 984
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 985
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 989
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 990
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-static {p1, p2, v0}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 992
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 994
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v2, v1}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 999
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 997
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, v2, v1}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    const/4 v1, 0x0

    .line 1004
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1013
    :goto_0
    return v1

    .line 1007
    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1008
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 1009
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v2, v1}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 1013
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, v2, v1}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_1
.end method


# virtual methods
.method public getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1047
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iget-object v0, p2, Landroid/support/design/widget/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 1049
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 1050
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 1051
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1052
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 1048
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1053
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 873
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isAutoHideEnabled()Z
    .locals 1

    .prologue
    .line 918
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 923
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 926
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 928
    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 933
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    .line 936
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    .line 940
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 937
    .restart local p3    # "dependency":Landroid/view/View;
    :cond_1
    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0, p3, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 873
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1020
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1021
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1022
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1023
    .local v2, "dependency":Landroid/view/View;
    instance-of v4, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    .line 1024
    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .end local v2    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, v2, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1034
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 1036
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 1037
    const/4 v4, 0x1

    return v4

    .line 1027
    .restart local v2    # "dependency":Landroid/view/View;
    :cond_1
    invoke-static {v2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1028
    invoke-direct {p0, v2, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1021
    .end local v2    # "dependency":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 873
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0
    .param p1, "autoHide"    # Z

    .prologue
    .line 906
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->autoHideEnabled:Z

    .line 907
    return-void
.end method

.method public setInternalAutoHideListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 953
    .local p0, "this":Landroid/support/design/widget/FloatingActionButton$BaseBehavior;, "Landroid/support/design/widget/FloatingActionButton$BaseBehavior<TT;>;"
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->internalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    .line 954
    return-void
.end method
