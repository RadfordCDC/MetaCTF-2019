.class Landroid/support/transition/TransitionSet$TransitionSetListener;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/support/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/support/transition/TransitionSet;

    .prologue
    .line 423
    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    .line 424
    iput-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 425
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    iget v1, v0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    .line 438
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    iget v0, v0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 441
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->end()V

    .line 443
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 444
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    iget-boolean v0, v0, Landroid/support/transition/TransitionSet;->mStarted:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->start()V

    .line 431
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 433
    :cond_0
    return-void
.end method
