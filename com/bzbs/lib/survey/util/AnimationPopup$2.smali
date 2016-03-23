.class final Lcom/bzbs/lib/survey/util/AnimationPopup$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isUseSmallImageFinal:Z

.field final synthetic val$pActivity:Landroid/app/Activity;

.field final synthetic val$pAnimationSet:I

.field final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;

.field final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iput p3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iput-boolean p4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 140
    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->outToRightAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$000()Landroid/view/animation/Animation;

    move-result-object v1

    .line 141
    .local v1, "outToRight":Landroid/view/animation/Animation;
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 143
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$2$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v6, :cond_51

    .line 165
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v5, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    .line 175
    :cond_36
    :goto_36
    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->inFromLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$300()Landroid/view/animation/Animation;

    move-result-object v0

    .line 176
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 177
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 179
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 232
    return-void

    .line 167
    .end local v0    # "inFromLeft":Landroid/view/animation/Animation;
    :cond_51
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v7, :cond_68

    .line 168
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v6, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v6}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    goto :goto_36

    .line 170
    :cond_68
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 171
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v7, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    goto :goto_36
.end method
