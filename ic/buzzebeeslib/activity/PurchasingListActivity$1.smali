.class Lic/buzzebeeslib/activity/PurchasingListActivity$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_b

    .line 193
    sparse-switch p2, :sswitch_data_6a

    :cond_b
    move v1, v0

    .line 206
    :goto_c
    return v1

    .line 196
    :sswitch_d
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsExpanded:Z
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$31(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 197
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-static {v2, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$19(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V

    .line 198
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$20(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/tutorial/menuList/animations/CollapseAnimation;

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gLayoutMenuSlide:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$20(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gScreenWidth:I
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$21(Lic/buzzebeeslib/activity/PurchasingListActivity;)I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x3fed99999999999aL

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/16 v6, 0x14

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/tutorial/menuList/animations/CollapseAnimation;-><init>(Landroid/view/View;III)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_3e
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$13(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$14(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$15(Lic/buzzebeeslib/activity/PurchasingListActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$16(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$1;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$17(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$18(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 193
    :sswitch_data_6a
    .sparse-switch
        0x17 -> :sswitch_d
        0x42 -> :sswitch_d
    .end sparse-switch
.end method
