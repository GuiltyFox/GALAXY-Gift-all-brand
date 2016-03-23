.class final Lcom/bzbs/lib/survey/util/AnimationPoint$4;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->showToastPoints(ILandroid/os/Handler;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pContext:Landroid/app/Activity;

.field final synthetic val$points:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 451
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    iput p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$points:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 454
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    if-eqz v0, :cond_98

    .line 455
    const-string/jumbo v0, "OAT"

    const-string/jumbo v12, "showToastPoints= Activity available"

    invoke-static {v0, v12}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 457
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v12, Lcom/bzbs/lib/survey/R$layout;->bz_toast_point:I

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    sget v13, Lcom/bzbs/lib/survey/R$id;->rootContainer:I

    invoke-virtual {v0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 459
    .local v8, "layout":Landroid/view/View;
    sget v0, Lcom/bzbs/lib/survey/R$id;->layoutRootAnimation:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 460
    .local v1, "layoutRootAnimation":Landroid/widget/RelativeLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v12, -0x1

    invoke-direct {v9, v0, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 463
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v0, v12, :cond_8f

    .line 464
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    const/high16 v12, 0x42340000

    invoke-static {v0, v12}, Lcom/bzbs/lib/survey/util/DpToPx;->GetPixelFromDips(Landroid/app/Activity;F)I

    move-result v10

    .line 468
    .local v10, "marginTop":I
    :goto_40
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v10, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 470
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 473
    .local v2, "pImgCash1":Landroid/widget/ImageView;
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash2:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 474
    .local v3, "pImgCash2":Landroid/widget/ImageView;
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash3:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 475
    .local v4, "pImgCash3":Landroid/widget/ImageView;
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgCash4:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 476
    .local v5, "pImgCash4":Landroid/widget/ImageView;
    sget v0, Lcom/bzbs/lib/survey/R$id;->imgComma1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 478
    .local v6, "pImgComma1":Landroid/widget/ImageView;
    iget v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$points:I

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 480
    new-instance v11, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    invoke-direct {v11, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 481
    .local v11, "toast":Landroid/widget/Toast;
    const/16 v0, 0x37

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v0, v12, v13}, Landroid/widget/Toast;->setGravity(III)V

    .line 482
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 483
    invoke-virtual {v11, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 484
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 488
    .end local v1    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v2    # "pImgCash1":Landroid/widget/ImageView;
    .end local v3    # "pImgCash2":Landroid/widget/ImageView;
    .end local v4    # "pImgCash3":Landroid/widget/ImageView;
    .end local v5    # "pImgCash4":Landroid/widget/ImageView;
    .end local v6    # "pImgComma1":Landroid/widget/ImageView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "marginTop":I
    .end local v11    # "toast":Landroid/widget/Toast;
    :goto_8e
    return-void

    .line 466
    .restart local v1    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "layout":Landroid/view/View;
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8f
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;->val$pContext:Landroid/app/Activity;

    const/high16 v12, 0x41a00000

    invoke-static {v0, v12}, Lcom/bzbs/lib/survey/util/DpToPx;->GetPixelFromDips(Landroid/app/Activity;F)I

    move-result v10

    .restart local v10    # "marginTop":I
    goto :goto_40

    .line 486
    .end local v1    # "layoutRootAnimation":Landroid/widget/RelativeLayout;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "marginTop":I
    :cond_98
    const-string/jumbo v0, "OAT"

    const-string/jumbo v12, "showToastPoints= Activity incorrect"

    invoke-static {v0, v12}, Lcom/bzbs/lib/survey/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e
.end method
