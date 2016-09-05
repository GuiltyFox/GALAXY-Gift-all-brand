.class final Lcom/bzbs/lib/survey/util/AnimationPoint$7;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 595
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->b:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 598
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    if-eqz v0, :cond_ef

    .line 599
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "showToastPoints= Activity available"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 601
    sget v2, Lcom/bzbs/lib/survey/R$layout;->bz_toast_point_gift:I

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    sget v3, Lcom/bzbs/lib/survey/R$id;->rootContainer:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 603
    sget v0, Lcom/bzbs/lib/survey/R$id;->layoutRootAnimation:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 604
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash1:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 605
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash2:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 606
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash3:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 607
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash4:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 608
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgComma1:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 609
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgPoint:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 610
    sget v7, Lcom/bzbs/lib/survey/R$id;->tvPoint:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 611
    sget v8, Lcom/bzbs/lib/survey/R$id;->imgRadius:I

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 618
    iget-object v10, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    sget v11, Lcom/bzbs/lib/survey/R$anim;->bz_radius_points:I

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 619
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 621
    iget v8, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->b:I

    if-le v8, v13, :cond_b3

    .line 622
    sget v8, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_points:I

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    :goto_81
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "comment"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 628
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_comment:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    :goto_98
    iget v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->b:I

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 642
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 643
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 644
    invoke-virtual {v0, v13}, Landroid/widget/Toast;->setDuration(I)V

    .line 645
    invoke-virtual {v0, v9}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 646
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 650
    :goto_b2
    return-void

    .line 624
    :cond_b3
    sget v8, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_point:I

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 630
    :cond_b9
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "like"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 631
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_like:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    .line 633
    :cond_d1
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "weeklytopup"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 634
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    sget v0, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_weekly_top:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    .line 637
    :cond_e9
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_98

    .line 648
    :cond_ef
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "showToastPoints= Activity incorrect"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2
.end method
