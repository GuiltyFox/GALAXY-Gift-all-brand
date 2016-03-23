.class final Lcom/bzbs/lib/survey/util/AnimationPoint$5;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->showToastPointsGalaxyAppCenterUnFullScreen(ILandroid/os/Handler;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pContext:Landroid/app/Activity;

.field final synthetic val$pHandler:Landroid/os/Handler;

.field final synthetic val$points:I

.field final synthetic val$pointsDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 5

    .prologue
    .line 493
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pointsDesc:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$points:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    if-eqz v2, :cond_fa

    .line 497
    const-string/jumbo v2, "OAT"

    const-string/jumbo v3, "showToastPoints= Activity available"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    .line 499
    .local v17, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_toast_point_app:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    sget v10, Lcom/bzbs/lib/survey/R$id;->rootContainer:I

    invoke-virtual {v2, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 501
    .local v18, "layout":Landroid/view/View;
    sget v2, Lcom/bzbs/lib/survey/R$id;->layoutRootAnimation:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 502
    .local v4, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout$LayoutParams;

    .line 504
    .local v19, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e6

    .line 505
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    const/high16 v10, 0x42340000

    invoke-static {v3, v10}, Lcom/bzbs/lib/survey/util/DpToPx;->GetPixelFromDips(Landroid/app/Activity;F)I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 509
    :goto_53
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCash1:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 513
    .local v5, "pImgCash1":Landroid/widget/ImageView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCash2:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 514
    .local v6, "pImgCash2":Landroid/widget/ImageView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCash3:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 515
    .local v7, "pImgCash3":Landroid/widget/ImageView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgCash4:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 516
    .local v8, "pImgCash4":Landroid/widget/ImageView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->imgComma1:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 517
    .local v9, "pImgComma1":Landroid/widget/ImageView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->tvPointsDesc:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 519
    .local v20, "tvPointsDesc":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pointsDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$points:I

    invoke-static/range {v2 .. v9}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimation2(Landroid/os/Handler;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 523
    new-instance v16, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 524
    .local v16, "toast":Landroid/widget/Toast;
    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 525
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 526
    new-instance v10, Lcom/bzbs/lib/survey/util/AnimationPoint$5$1;

    const-wide/16 v12, 0x2710

    const-wide/16 v14, 0x3e8

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lcom/bzbs/lib/survey/util/AnimationPoint$5$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPoint$5;JJLandroid/widget/Toast;)V

    .line 535
    invoke-virtual {v10}, Lcom/bzbs/lib/survey/util/AnimationPoint$5$1;->start()Landroid/os/CountDownTimer;

    .line 539
    .end local v4    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v5    # "pImgCash1":Landroid/widget/ImageView;
    .end local v6    # "pImgCash2":Landroid/widget/ImageView;
    .end local v7    # "pImgCash3":Landroid/widget/ImageView;
    .end local v8    # "pImgCash4":Landroid/widget/ImageView;
    .end local v9    # "pImgComma1":Landroid/widget/ImageView;
    .end local v16    # "toast":Landroid/widget/Toast;
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "layout":Landroid/view/View;
    .end local v19    # "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "tvPointsDesc":Landroid/widget/TextView;
    :goto_e5
    return-void

    .line 507
    .restart local v4    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .restart local v17    # "inflater":Landroid/view/LayoutInflater;
    .restart local v18    # "layout":Landroid/view/View;
    .restart local v19    # "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    const/high16 v10, 0x42340000

    invoke-static {v3, v10}, Lcom/bzbs/lib/survey/util/DpToPx;->GetPixelFromDips(Landroid/app/Activity;F)I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_53

    .line 537
    .end local v4    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "layout":Landroid/view/View;
    .end local v19    # "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_fa
    const-string/jumbo v2, "OAT"

    const-string/jumbo v3, "showToastPoints= Activity incorrect"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5
.end method
