.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$textDescriptionSeeMore:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->val$textDescriptionSeeMore:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f090332

    .line 747
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v2, 0x7f1000f9

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 748
    .local v0, "textDescription":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->val$textDescriptionSeeMore:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 749
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 750
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->val$textDescriptionSeeMore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090318

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :goto_37
    return-void

    .line 752
    :cond_38
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 753
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->val$textDescriptionSeeMore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method
