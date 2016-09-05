.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/view/GestureDetectorCompat;->a(Landroid/view/MotionEvent;)Z

    .line 310
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 311
    if-nez v2, :cond_9d

    .line 312
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p2, v1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 313
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 314
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 315
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V
    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    .line 316
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_85

    .line 317
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-static {v2, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_85

    .line 319
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->k:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 320
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->l:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 321
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 322
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v4, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 323
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    iget-object v5, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 325
    :cond_73
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->i:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v3, v4, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 326
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v2, p2, v3, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 343
    :cond_85
    :goto_85
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v2

    if-eqz v2, :cond_96

    .line 344
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 346
    :cond_96
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_c3

    :goto_9c
    return v0

    .line 329
    :cond_9d
    const/4 v3, 0x3

    if-eq v2, v3, :cond_a2

    if-ne v2, v0, :cond_ad

    .line 330
    :cond_a2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v4, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 331
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v3, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v2, v3, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_85

    .line 332
    :cond_ad
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_85

    .line 335
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v3}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 339
    if-ltz v3, :cond_85

    .line 340
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v4, v2, p2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_85

    :cond_c3
    move v0, v1

    .line 346
    goto :goto_9c
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5

    .prologue
    .line 410
    if-nez p1, :cond_3

    .line 414
    :goto_2
    return-void

    .line 413
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 351
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->a(Landroid/view/MotionEvent;)Z

    .line 356
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 357
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    :cond_1c
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v1, v4, :cond_23

    .line 406
    :cond_22
    :goto_22
    return-void

    .line 362
    :cond_23
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 363
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 365
    if-ltz v2, :cond_36

    .line 366
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v3, v1, p2, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 368
    :cond_36
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 369
    if-eqz v3, :cond_22

    .line 372
    packed-switch v1, :pswitch_data_b4

    :pswitch_3f
    goto :goto_22

    .line 390
    :cond_40
    :goto_40
    :pswitch_40
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v2, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_22

    .line 375
    :pswitch_4b
    if-ltz v2, :cond_22

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p2, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    invoke-static {v0, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_22

    .line 385
    :pswitch_7d
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 386
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_40

    .line 394
    :pswitch_8f
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 395
    invoke-static {p2, v1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 396
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_22

    .line 399
    if-nez v1, :cond_a0

    const/4 v0, 0x1

    .line 400
    :cond_a0
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p2, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p2, v2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    goto/16 :goto_22

    .line 372
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4b
        :pswitch_7d
        :pswitch_3f
        :pswitch_3f
        :pswitch_8f
    .end packed-switch
.end method
