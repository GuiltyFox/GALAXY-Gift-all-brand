.class Lic/buzzebeeslib/util/AnimationPoint$5;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGalaxyAppCenter(ILandroid/os/Handler;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pContext:Landroid/app/Activity;

.field private final synthetic val$pHandler:Landroid/os/Handler;

.field private final synthetic val$points:I

.field private final synthetic val$pointsDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pointsDesc:Ljava/lang/String;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pHandler:Landroid/os/Handler;

    iput p4, p0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$points:I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    if-eqz v1, :cond_b6

    .line 481
    const-string v1, "OAT"

    const-string v2, "showToastPoints= Activity available"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    .line 483
    .local v16, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lic/buzzebeeslib/R$layout;->bz_toast_point_app:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    sget v9, Lic/buzzebeeslib/R$id;->rootContainer:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 485
    .local v17, "layout":Landroid/view/View;
    sget v1, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 486
    .local v3, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 487
    .local v4, "pImgCash1":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 488
    .local v5, "pImgCash2":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 489
    .local v6, "pImgCash3":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 490
    .local v7, "pImgCash4":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 491
    .local v8, "pImgComma1":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$id;->tvPointsDesc:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 493
    .local v18, "tvPointsDesc":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pointsDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v2, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$points:I

    invoke-static/range {v1 .. v8}, Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimation2(Landroid/os/Handler;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 497
    new-instance v15, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/util/AnimationPoint$5;->val$pContext:Landroid/app/Activity;

    invoke-direct {v15, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 498
    .local v15, "toast":Landroid/widget/Toast;
    const/16 v1, 0x37

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v15, v1, v2, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 499
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 500
    new-instance v9, Lic/buzzebeeslib/util/AnimationPoint$5$1;

    const-wide/16 v11, 0x2710

    const-wide/16 v13, 0x3e8

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lic/buzzebeeslib/util/AnimationPoint$5$1;-><init>(Lic/buzzebeeslib/util/AnimationPoint$5;JJLandroid/widget/Toast;)V

    .line 509
    invoke-virtual {v9}, Lic/buzzebeeslib/util/AnimationPoint$5$1;->start()Landroid/os/CountDownTimer;

    .line 513
    .end local v3    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v4    # "pImgCash1":Landroid/widget/ImageView;
    .end local v5    # "pImgCash2":Landroid/widget/ImageView;
    .end local v6    # "pImgCash3":Landroid/widget/ImageView;
    .end local v7    # "pImgCash4":Landroid/widget/ImageView;
    .end local v8    # "pImgComma1":Landroid/widget/ImageView;
    .end local v15    # "toast":Landroid/widget/Toast;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v17    # "layout":Landroid/view/View;
    .end local v18    # "tvPointsDesc":Landroid/widget/TextView;
    :goto_b5
    return-void

    .line 511
    :cond_b6
    const-string v1, "OAT"

    const-string v2, "showToastPoints= Activity incorrect"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5
.end method
