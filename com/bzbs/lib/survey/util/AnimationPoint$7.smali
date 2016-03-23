.class final Lcom/bzbs/lib/survey/util/AnimationPoint$7;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pContext:Landroid/app/Activity;

.field final synthetic val$points:I

.field final synthetic val$strFrom:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 595
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    iput p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$points:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$strFrom:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    if-eqz v1, :cond_10d

    .line 599
    const-string/jumbo v1, "OAT"

    const-string/jumbo v15, "showToastPoints= Activity available"

    invoke-static {v1, v15}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 601
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v15, Lcom/bzbs/lib/survey/R$layout;->bz_toast_point_gift:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    sget v16, Lcom/bzbs/lib/survey/R$id;->rootContainer:I

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v10, v15, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 603
    .local v11, "layout":Landroid/view/View;
    sget v1, Lcom/bzbs/lib/survey/R$id;->layoutRootAnimation:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 604
    .local v2, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgCash1:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 605
    .local v3, "pImgCash1":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgCash2:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 606
    .local v4, "pImgCash2":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgCash3:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 607
    .local v5, "pImgCash3":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgCash4:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 608
    .local v6, "pImgCash4":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgComma1:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 609
    .local v7, "pImgComma1":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgPoint:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 610
    .local v8, "imgPoint":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->tvPoint:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 611
    .local v14, "tvPoint":Landroid/widget/ImageView;
    sget v1, Lcom/bzbs/lib/survey/R$id;->imgRadius:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 618
    .local v9, "imgRadius":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    sget v15, Lcom/bzbs/lib/survey/R$anim;->bz_radius_points:I

    invoke-static {v1, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 619
    .local v12, "myRotation":Landroid/view/animation/Animation;
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 621
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$points:I

    const/4 v15, 0x1

    if-le v1, v15, :cond_cb

    .line 622
    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_points:I

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    :goto_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v15, "comment"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 628
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_comment:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    :goto_a6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$points:I

    invoke-static/range {v1 .. v7}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 642
    new-instance v13, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$pContext:Landroid/app/Activity;

    invoke-direct {v13, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 643
    .local v13, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v1, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 644
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 645
    invoke-virtual {v13, v11}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 646
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 650
    .end local v2    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v3    # "pImgCash1":Landroid/widget/ImageView;
    .end local v4    # "pImgCash2":Landroid/widget/ImageView;
    .end local v5    # "pImgCash3":Landroid/widget/ImageView;
    .end local v6    # "pImgCash4":Landroid/widget/ImageView;
    .end local v7    # "pImgComma1":Landroid/widget/ImageView;
    .end local v8    # "imgPoint":Landroid/widget/ImageView;
    .end local v9    # "imgRadius":Landroid/widget/ImageView;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "layout":Landroid/view/View;
    .end local v12    # "myRotation":Landroid/view/animation/Animation;
    .end local v13    # "toast":Landroid/widget/Toast;
    .end local v14    # "tvPoint":Landroid/widget/ImageView;
    :goto_ca
    return-void

    .line 624
    .restart local v2    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .restart local v3    # "pImgCash1":Landroid/widget/ImageView;
    .restart local v4    # "pImgCash2":Landroid/widget/ImageView;
    .restart local v5    # "pImgCash3":Landroid/widget/ImageView;
    .restart local v6    # "pImgCash4":Landroid/widget/ImageView;
    .restart local v7    # "pImgComma1":Landroid/widget/ImageView;
    .restart local v8    # "imgPoint":Landroid/widget/ImageView;
    .restart local v9    # "imgRadius":Landroid/widget/ImageView;
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "layout":Landroid/view/View;
    .restart local v12    # "myRotation":Landroid/view/animation/Animation;
    .restart local v14    # "tvPoint":Landroid/widget/ImageView;
    :cond_cb
    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_point:I

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8c

    .line 630
    :cond_d1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v15, "like"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 631
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_like:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a6

    .line 633
    :cond_ec
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v15, "weeklytopup"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 634
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    sget v1, Lcom/bzbs/lib/survey/R$drawable;->bz_tv_weekly_top:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a6

    .line 637
    :cond_107
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a6

    .line 648
    .end local v2    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v3    # "pImgCash1":Landroid/widget/ImageView;
    .end local v4    # "pImgCash2":Landroid/widget/ImageView;
    .end local v5    # "pImgCash3":Landroid/widget/ImageView;
    .end local v6    # "pImgCash4":Landroid/widget/ImageView;
    .end local v7    # "pImgComma1":Landroid/widget/ImageView;
    .end local v8    # "imgPoint":Landroid/widget/ImageView;
    .end local v9    # "imgRadius":Landroid/widget/ImageView;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "layout":Landroid/view/View;
    .end local v12    # "myRotation":Landroid/view/animation/Animation;
    .end local v14    # "tvPoint":Landroid/widget/ImageView;
    :cond_10d
    const-string/jumbo v1, "OAT"

    const-string/jumbo v15, "showToastPoints= Activity incorrect"

    invoke-static {v1, v15}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca
.end method
