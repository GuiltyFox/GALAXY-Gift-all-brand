.class Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPopup$2$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/privilege/util/AnimationPopup$2$2$1;

.field private final synthetic val$isUseSmallImageFinal:Z

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/AnimationPopup$2$2$1;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->this$3:Lcom/samsung/privilege/util/AnimationPopup$2$2$1;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iput p4, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pAnimationSet:I

    iput-boolean p5, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$isUseSmallImageFinal:Z

    iput-object p6, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pTvNext:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f090343

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v5, :cond_46

    .line 189
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v5, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :cond_45
    :goto_45
    return-void

    .line 194
    :cond_46
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v6, :cond_74

    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v6, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_45

    .line 200
    :cond_74
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v7, :cond_45

    .line 201
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v7, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$2$2$1$1;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_45
.end method
