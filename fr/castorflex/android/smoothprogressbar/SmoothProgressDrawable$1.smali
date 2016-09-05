.class Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.end annotation


# instance fields
.field final synthetic a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;


# direct methods
.method constructor <init>(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const v3, 0x3c23d70a    # 0.01f

    .line 564
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 565
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F

    .line 566
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F

    .line 567
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_42

    .line 568
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->stop()V

    .line 576
    :cond_42
    :goto_42
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v0

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6a

    .line 577
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->a(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;Z)Z

    .line 578
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->f(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F

    .line 581
    :cond_6a
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 582
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->g(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 584
    :cond_84
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 585
    return-void

    .line 570
    :cond_8a
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 571
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->d(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F

    goto :goto_42

    .line 573
    :cond_a6
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->c(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v1

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;->a:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->e(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->b(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F

    goto :goto_42
.end method
