.class Lcom/samsung/privilege/activity/CampaignListActivity$17;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->playPopupWelcome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$imagePopupWelcome1:Landroid/widget/ImageView;

.field private final synthetic val$imagePopupWelcome2:Landroid/widget/ImageView;

.field private final synthetic val$layoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

.field private final synthetic val$tvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$tvNext:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1678
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1b

    .line 1679
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$17;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1804
    :goto_1a
    return-void

    .line 1689
    :cond_1b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$18(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1690
    .local v9, "outToLeft":Landroid/view/animation/Animation;
    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1691
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1692
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1693
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1695
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$17$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$17$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$17;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1713
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v2, :cond_88

    .line 1714
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1715
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1719
    :goto_50
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$16(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    .line 1736
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->inFromRightAnimation()Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$19(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1737
    .local v8, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1738
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1739
    invoke-virtual {v8, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1740
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1742
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$tvNext:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutBack:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$layoutButton:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/privilege/activity/CampaignListActivity$17$3;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$17;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1a

    .line 1717
    .end local v8    # "inFromRight":Landroid/view/animation/Animation;
    :cond_7f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_50

    .line 1720
    :cond_88
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v3, :cond_af

    .line 1721
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1722
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1726
    :goto_a0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$16(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    goto :goto_55

    .line 1724
    :cond_a6
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a0

    .line 1727
    :cond_af
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_55

    .line 1728
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1729
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1733
    :goto_c7
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v5}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$16(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    goto :goto_55

    .line 1731
    :cond_cd
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c7
.end method
