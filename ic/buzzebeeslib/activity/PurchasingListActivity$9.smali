.class Lic/buzzebeeslib/activity/PurchasingListActivity$9;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->showDialogWinner(Ljava/lang/String;Ljava/lang/String;Lic/buzzebeeslib/bean/Purchasing;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$9;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$9;->val$dialogSerial:Landroid/app/Dialog;

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1718
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$9;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1723
    return-void
.end method
