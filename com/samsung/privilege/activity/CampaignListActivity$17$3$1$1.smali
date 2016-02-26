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

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v2, 0x7f090343

    const/4 v3, 0x0

    .line 1768
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1769
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6c

    .line 1770
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1771
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1775
    :goto_3c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1776
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

    .line 1777
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1800
    :cond_62
    :goto_62
    return-void

    .line 1773
    :cond_63
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 1779
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_cd

    .line 1780
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1781
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1785
    :goto_9d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1786
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

    .line 1787
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1788
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_62

    .line 1783
    :cond_c4
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 1789
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_62

    .line 1790
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
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1791
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1795
    :goto_fe
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1796
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

    const v2, 0x7f090344

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_62

    .line 1793
    :cond_129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3$1$1;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    const v1, 0x7f02035e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_fe
.end method
