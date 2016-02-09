.class Lic/buzzebeeslib/util/AnimationPoint$6;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pContext:Landroid/app/Activity;

.field private final synthetic val$points:I

.field private final synthetic val$strFrom:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    iput p2, p0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$points:I

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$strFrom:Ljava/lang/String;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    if-eqz v1, :cond_108

    .line 522
    const-string v1, "OAT"

    const-string v15, "showToastPoints= Activity available"

    invoke-static {v1, v15}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 524
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v15, Lic/buzzebeeslib/R$layout;->bz_toast_point_gift:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    sget v16, Lic/buzzebeeslib/R$id;->rootContainer:I

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v10, v15, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 526
    .local v11, "layout":Landroid/view/View;
    sget v1, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 527
    .local v2, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 528
    .local v3, "pImgCash1":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 529
    .local v4, "pImgCash2":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 530
    .local v5, "pImgCash3":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 531
    .local v6, "pImgCash4":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 532
    .local v7, "pImgComma1":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgPoint:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 533
    .local v8, "imgPoint":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->tvPoint:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 534
    .local v14, "tvPoint":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgRadius:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 541
    .local v9, "imgRadius":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    sget v15, Lic/buzzebeeslib/R$anim;->bz_radius_points:I

    invoke-static {v1, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 542
    .local v12, "myRotation":Landroid/view/animation/Animation;
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 544
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$points:I

    const/4 v15, 0x1

    if-le v1, v15, :cond_c8

    .line 545
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_tv_points:I

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    :goto_8a
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v15, "comment"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 551
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_tv_comment:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    :goto_a3
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$points:I

    invoke-static/range {v1 .. v7}, Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 565
    new-instance v13, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$pContext:Landroid/app/Activity;

    invoke-direct {v13, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 566
    .local v13, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v1, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 567
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 568
    invoke-virtual {v13, v11}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 569
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 573
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
    :goto_c7
    return-void

    .line 547
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
    :cond_c8
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_tv_point:I

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    .line 553
    :cond_ce
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v15, "like"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 554
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_tv_like:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a3

    .line 556
    :cond_e8
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$6;->val$strFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v15, "weeklytopup"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_tv_weekly_top:I

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a3

    .line 560
    :cond_102
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a3

    .line 571
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
    :cond_108
    const-string v1, "OAT"

    const-string v15, "showToastPoints= Activity incorrect"

    invoke-static {v1, v15}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7
.end method
