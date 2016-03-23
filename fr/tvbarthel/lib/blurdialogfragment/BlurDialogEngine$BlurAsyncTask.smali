.class Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;
.super Landroid/os/AsyncTask;
.source "BlurDialogEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBackgroundView:Landroid/view/View;

.field final synthetic this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;


# direct methods
.method private constructor <init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V
    .registers 2

    .prologue
    .line 496
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;)V
    .registers 3
    .param p1, "x0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;
    .param p2, "x1"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;-><init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 540
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    # invokes: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->blur(Landroid/graphics/Bitmap;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$300(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 545
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$400(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 554
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;
    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$200(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 555
    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;
    invoke-static {v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$400(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 556
    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$500(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mBlurredBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$400(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 561
    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mAnimationDuration:I
    invoke-static {v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$600(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 565
    iput-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    .line 566
    iput-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    .line 567
    return-void
.end method

.method protected onPreExecute()V
    .registers 8

    .prologue
    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 504
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 506
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # getter for: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->mHoldingActivity:Landroid/app/Activity;
    invoke-static {v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$200(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    .line 511
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 512
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 513
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 514
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 515
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 516
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    .line 522
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_79

    .line 523
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    .line 524
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 523
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 527
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    .line 528
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 527
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 529
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 530
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 531
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 532
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->mBackground:Landroid/graphics/Bitmap;

    .line 534
    :cond_79
    return-void
.end method
