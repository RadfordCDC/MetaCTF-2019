.class Landroid/support/design/widget/SnackbarManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SnackbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarRecord"
.end annotation


# instance fields
.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/SnackbarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field duration:I

.field paused:Z


# direct methods
.method constructor <init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 178
    iput p1, p0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 179
    return-void
.end method


# virtual methods
.method isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
