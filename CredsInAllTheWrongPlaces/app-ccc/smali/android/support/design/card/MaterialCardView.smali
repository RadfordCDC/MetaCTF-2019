.class public Landroid/support/design/card/MaterialCardView;
.super Landroid/support/v7/widget/CardView;
.source "MaterialCardView.java"


# instance fields
.field private final cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    sget v0, Landroid/support/design/R$attr;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v2, Landroid/support/design/R$styleable;->MaterialCardView:[I

    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_CardView:I

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 55
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 63
    .local v6, "attributes":Landroid/content/res/TypedArray;
    new-instance v0, Landroid/support/design/card/MaterialCardViewHelper;

    invoke-direct {v0, p0}, Landroid/support/design/card/MaterialCardViewHelper;-><init>(Landroid/support/design/card/MaterialCardView;)V

    iput-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    .line 64
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0, v6}, Landroid/support/design/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 66
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Landroid/support/design/card/MaterialCardViewHelper;->getStrokeColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Landroid/support/design/card/MaterialCardViewHelper;->getStrokeWidth()I

    move-result v0

    return v0
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->setRadius(F)V

    .line 102
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Landroid/support/design/card/MaterialCardViewHelper;->updateForeground()V

    .line 103
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/card/MaterialCardViewHelper;->setStrokeColor(I)V

    .line 76
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1, "strokeWidth"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/design/card/MaterialCardView;->cardViewHelper:Landroid/support/design/card/MaterialCardViewHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/card/MaterialCardViewHelper;->setStrokeWidth(I)V

    .line 91
    return-void
.end method
