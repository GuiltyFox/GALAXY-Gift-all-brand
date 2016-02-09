.class Lic/buzzebeeslib/util/AnimationPoint$4;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPoint;->showToastPoints(ILandroid/os/Handler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pContext:Landroid/app/Activity;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    iput p2, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$points:I

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 450
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    if-eqz v0, :cond_6e

    .line 451
    const-string v0, "OAT"

    const-string v10, "showToastPoints= Activity available"

    invoke-static {v0, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 453
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lic/buzzebeeslib/R$layout;->bz_toast_point:I

    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    sget v11, Lic/buzzebeeslib/R$id;->rootContainer:I

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 455
    .local v8, "layout":Landroid/view/View;
    sget v0, Lic/buzzebeeslib/R$idPoints;->layoutRootAnimation:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 456
    .local v1, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    sget v0, Lic/buzzebeeslib/R$idPoints;->imgCash1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 457
    .local v2, "pImgCash1":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idPoints;->imgCash2:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 458
    .local v3, "pImgCash2":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idPoints;->imgCash3:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 459
    .local v4, "pImgCash3":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idPoints;->imgCash4:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 460
    .local v5, "pImgCash4":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$idPoints;->imgComma1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 462
    .local v6, "pImgComma1":Landroid/widget/ImageView;
    iget v0, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$points:I

    invoke-static/range {v0 .. v6}, Lic/buzzebeeslib/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 464
    new-instance v9, Landroid/widget/Toast;

    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 465
    .local v9, "toast":Landroid/widget/Toast;
    const/16 v0, 0x37

    invoke-virtual {v9, v0, v12, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 466
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 467
    invoke-virtual {v9, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 468
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 472
    .end local v1    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v2    # "pImgCash1":Landroid/widget/ImageView;
    .end local v3    # "pImgCash2":Landroid/widget/ImageView;
    .end local v4    # "pImgCash3":Landroid/widget/ImageView;
    .end local v5    # "pImgCash4":Landroid/widget/ImageView;
    .end local v6    # "pImgComma1":Landroid/widget/ImageView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "toast":Landroid/widget/Toast;
    :goto_6d
    return-void

    .line 470
    :cond_6e
    const-string v0, "OAT"

    const-string v10, "showToastPoints= Activity incorrect"

    invoke-static {v0, v10}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d
.end method
