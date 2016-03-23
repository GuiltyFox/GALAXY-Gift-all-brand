.class Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v0

    if-ne v0, v4, :cond_81

    .line 193
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-boolean v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v4, v2}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->intro_next:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :cond_80
    :goto_80
    return-void

    .line 198
    :cond_81
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v0

    if-ne v0, v5, :cond_e1

    .line 199
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-boolean v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v5, v2}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->intro_next:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_80

    .line 204
    :cond_e1
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v0

    if-ne v0, v6, :cond_80

    .line 205
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pAnimationSet:I

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-boolean v2, v2, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v6, v2}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pTvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    sget v2, Lcom/bzbs/lib/survey/R$string;->intro_next:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;->this$2:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_80
.end method
