.class public abstract Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"


# instance fields
.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method getFrameCallback()Landroid/view/Choreographer$FrameCallback;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_b

    .line 104
    new-instance v0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$1;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$1;-><init>(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V

    iput-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 111
    :cond_b
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method getRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$2;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback$2;-><init>(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V

    iput-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method
