.class Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$layoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$tvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$tvNext:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v2, 0x7f0a033c

    const/4 v3, 0x0

    .line 1750
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1751
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6c

    .line 1752
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1753
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1757
    :goto_3c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1759
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1782
    :cond_62
    :goto_62
    return-void

    .line 1755
    :cond_63
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 1761
    :cond_6c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_cd

    .line 1762
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1763
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1767
    :goto_9d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1769
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_62

    .line 1765
    :cond_c4
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 1771
    :cond_cd
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_62

    .line 1772
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1773
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1777
    :goto_fe
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$tvNext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->this$3:Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->this$2:Lcom/samsung/privilege/activity/CampaignListActivity$17$3;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1;)Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17$3;)Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    const v2, 0x7f0a033d

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1780
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_62

    .line 1775
    :cond_129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_fe
.end method
