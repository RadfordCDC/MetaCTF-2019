.class public Landroid/support/design/widget/TabItem;
.super Landroid/view/View;
.source "TabItem.java"


# instance fields
.field public final customLayout:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v1, Landroid/support/design/R$styleable;->TabItem:[I

    .line 55
    invoke-static {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/design/R$styleable;->TabItem_android_text:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabItem;->text:Ljava/lang/CharSequence;

    .line 57
    sget v1, Landroid/support/design/R$styleable;->TabItem_android_icon:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    sget v1, Landroid/support/design/R$styleable;->TabItem_android_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabItem;->customLayout:I

    .line 59
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 60
    return-void
.end method
