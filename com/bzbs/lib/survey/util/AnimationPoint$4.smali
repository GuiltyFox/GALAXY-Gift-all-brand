.class final Lcom/bzbs/lib/survey/util/AnimationPoint$4;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILandroid/os/Handler;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 451
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 454
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    if-eqz v0, :cond_93

    .line 455
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "showToastPoints= Activity available"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 457
    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_toast_point:I

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    sget v3, Lcom/bzbs/lib/survey/R$id;->rootContainer:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 459
    sget v0, Lcom/bzbs/lib/survey/R$id;->layoutRootAnimation:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 460
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_8a

    .line 464
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v0, v3}, Lcom/bzbs/lib/survey/util/DpToPx;->a(Landroid/app/Activity;F)I

    move-result v0

    .line 468
    :goto_40
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash1:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 473
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash2:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 474
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash3:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 475
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash4:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 476
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgComma1:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 478
    iget v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->b:I

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 480
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 481
    const/16 v1, 0x37

    invoke-virtual {v0, v1, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 483
    invoke-virtual {v0, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 484
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    :goto_89
    return-void

    .line 466
    :cond_8a
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->a:Landroid/app/Activity;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v0, v3}, Lcom/bzbs/lib/survey/util/DpToPx;->a(Landroid/app/Activity;F)I

    move-result v0

    goto :goto_40

    .line 486
    :cond_93
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "showToastPoints= Activity incorrect"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89
.end method
