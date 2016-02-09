.class Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity$3;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 440
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$13(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$14(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$15(Lic/buzzebeeslib/activity/PurchasingListActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v6

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$16(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$3$1;->this$1:Lic/buzzebeeslib/activity/PurchasingListActivity$3;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity$3;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity$3;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$3;)Lic/buzzebeeslib/activity/PurchasingListActivity;

    move-result-object v7

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$17(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$18(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method
