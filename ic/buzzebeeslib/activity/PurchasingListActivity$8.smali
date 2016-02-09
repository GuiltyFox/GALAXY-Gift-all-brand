.class Lic/buzzebeeslib/activity/PurchasingListActivity$8;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogDealsGet(Lic/buzzebeeslib/bean/Purchasing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;

.field private final synthetic val$pPurchasing:Lic/buzzebeeslib/bean/Purchasing;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;Lic/buzzebeeslib/bean/Purchasing;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->val$dialogSerial:Landroid/app/Dialog;

    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->val$pPurchasing:Lic/buzzebeeslib/bean/Purchasing;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 1435
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1436
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const-string v4, ""

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v6, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$45(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/ProgressDialog;)V

    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/redeem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->val$pPurchasing:Lic/buzzebeeslib/bean/Purchasing;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/use?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OK redeem url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$8;->val$pPurchasing:Lic/buzzebeeslib/bean/Purchasing;

    invoke-direct {v2, v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostUsedListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/bean/Purchasing;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1444
    return-void
.end method
