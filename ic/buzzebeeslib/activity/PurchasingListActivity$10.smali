.class Lic/buzzebeeslib/activity/PurchasingListActivity$10;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogError(Ljava/lang/String;ZLic/buzzebeeslib/bean/Purchasing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$10;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$10;->val$dialogSerial:Landroid/app/Dialog;

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1776
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$10;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1777
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1778
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1779
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$10;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1781
    return-void
.end method
