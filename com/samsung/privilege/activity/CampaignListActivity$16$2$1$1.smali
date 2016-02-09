.class Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$layoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$tvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$tvNext:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v3, 0x7f0a033c

    const/4 v2, 0x0

    .line 1618
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 1620
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1621
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1625
    :goto_3c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1628
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1650
    :cond_63
    :goto_63
    return-void

    .line 1623
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 1629
    :cond_6d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ce

    .line 1630
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1631
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1635
    :goto_9e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_63

    .line 1633
    :cond_c5
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9e

    .line 1639
    :cond_ce
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    .line 1640
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 1641
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1645
    :goto_ff
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$16$2;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1;)Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$16;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16$2;)Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$16;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1648
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_63

    .line 1643
    :cond_127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ff
.end method
