.class public Landroid/support/design/widget/BottomSheetDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "BottomSheetDialog.java"


# instance fields
.field private behavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-static {p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 47
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 215
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog$4;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog$4;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 58
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 47
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 215
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog$4;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog$4;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 64
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetDialog;->supportRequestWindowFeature(I)Z

    .line 65
    iput-boolean p2, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 66
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 205
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/design/R$attr;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 212
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    return p1

    .line 209
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    sget p1, Landroid/support/design/R$style;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 6
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$layout;->design_bottom_sheet_dialog:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 128
    .local v1, "container":Landroid/widget/FrameLayout;
    sget v3, Landroid/support/design/R$id;->coordinator:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    .line 129
    .local v2, "coordinator":Landroid/support/design/widget/CoordinatorLayout;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 132
    :cond_0
    sget v3, Landroid/support/design/R$id;->design_bottom_sheet:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 133
    .local v0, "bottomSheet":Landroid/widget/FrameLayout;
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 134
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetDialog;->bottomSheetCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 135
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    invoke-virtual {v3, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 136
    if-nez p3, :cond_1

    .line 137
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    :goto_0
    sget v3, Landroid/support/design/R$id;->touch_outside:I

    .line 143
    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/BottomSheetDialog$1;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BottomSheetDialog$1;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v3, Landroid/support/design/widget/BottomSheetDialog$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BottomSheetDialog$2;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 178
    new-instance v3, Landroid/support/design/widget/BottomSheetDialog$3;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BottomSheetDialog$3;-><init>(Landroid/support/design/widget/BottomSheetDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    return-object v1

    .line 139
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 79
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 80
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 82
    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onStart()V

    .line 110
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setCancelable(Z)V

    .line 99
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_0

    .line 100
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 101
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    if-nez v0, :cond_0

    .line 119
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->cancelable:Z

    .line 121
    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 122
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 123
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [I

    const v3, 0x101035b

    aput v3, v2, v5

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 198
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetDialog;->canceledOnTouchOutside:Z

    return v1
.end method
