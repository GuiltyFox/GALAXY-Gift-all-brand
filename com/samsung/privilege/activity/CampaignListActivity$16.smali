.class Lcom/samsung/privilege/activity/CampaignListActivity$16;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$tvNext:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutBack:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$16;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1575
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->outToRightAnimation()Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$12(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1576
    .local v9, "outToRight":Landroid/view/animation/Animation;
    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1577
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1578
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1579
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$16$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$16$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$16;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1599
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v3, :cond_72

    .line 1600
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1601
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1605
    :goto_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    .line 1622
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->inFromLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$16(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1623
    .local v8, "inFromLeft":Landroid/view/animation/Animation;
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1624
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1625
    invoke-virtual {v8, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1626
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1628
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome1:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$tvNext:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutBack:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$layoutButton:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/privilege/activity/CampaignListActivity$16$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$16;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1689
    return-void

    .line 1603
    .end local v8    # "inFromLeft":Landroid/view/animation/Animation;
    :cond_69
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3a

    .line 1606
    :cond_72
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_99

    .line 1607
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1608
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1612
    :goto_8a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    goto :goto_3f

    .line 1610
    :cond_90
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a

    .line 1613
    :cond_99
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3f

    .line 1614
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1615
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1619
    :goto_b2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$15(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    goto :goto_3f

    .line 1617
    :cond_b8
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$16;->val$imagePopupWelcome2:Landroid/widget/ImageView;

    const v1, 0x7f02035c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b2
.end method
