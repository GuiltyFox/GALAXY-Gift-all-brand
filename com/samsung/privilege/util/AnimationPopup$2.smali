.class Lcom/samsung/privilege/util/AnimationPopup$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isUseSmallImageFinal:Z

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field private final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;

.field private final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iput p3, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pAnimationSet:I

    iput-boolean p4, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    iput-object p5, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 136
    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->outToRightAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$0()Landroid/view/animation/Animation;

    move-result-object v12

    .line 137
    .local v12, "outToRight":Landroid/view/animation/Animation;
    invoke-virtual {v12, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 139
    invoke-virtual {v12, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    new-instance v0, Lcom/samsung/privilege/util/AnimationPopup$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/AnimationPopup$2$1;-><init>(Lcom/samsung/privilege/util/AnimationPopup$2;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v4, :cond_64

    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v3, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-static {v3}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    .line 171
    :cond_36
    :goto_36
    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->inFromLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$4()Landroid/view/animation/Animation;

    move-result-object v11

    .line 172
    .local v11, "inFromLeft":Landroid/view/animation/Animation;
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 173
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 174
    invoke-virtual {v11, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    new-instance v0, Lcom/samsung/privilege/util/AnimationPopup$2$2;

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v6, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    iget-object v7, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/privilege/util/AnimationPopup$2$2;-><init>(Lcom/samsung/privilege/util/AnimationPopup$2;Landroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    return-void

    .line 163
    .end local v11    # "inFromLeft":Landroid/view/animation/Animation;
    :cond_64
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v5, :cond_7b

    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v4, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    invoke-static {v4}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    goto :goto_36

    .line 166
    :cond_7b
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v5, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    invoke-static {v5}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    goto :goto_36
.end method
