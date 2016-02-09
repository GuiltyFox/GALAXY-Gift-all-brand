.class Lic/buzzebeeslib/activity/PurchasingListActivity$2;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->initialLayout()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 406
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->IsHasAddress()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$32(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    .line 408
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iput v8, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->gSumListPerPage:I

    .line 409
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$4(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V

    .line 410
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$33(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$PurchasingListAdapter;)V

    .line 412
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->etTextSearch:Landroid/widget/EditText;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$13(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCategory:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$14(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterPoints:J
    invoke-static {v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$15(Lic/buzzebeeslib/activity/PurchasingListActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterCenter:Ljava/lang/String;
    invoke-static {v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$16(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gCurrentFilterMode:Ljava/lang/String;
    invoke-static {v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$17(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->loadCampaign(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$18(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$2;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$34(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 416
    return-void
.end method
