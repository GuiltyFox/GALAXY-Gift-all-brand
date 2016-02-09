.class Lic/buzzebeeslib/activity/HelpCenterListActivity$4$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$4;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$4;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 513
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$4;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doPost(Landroid/view/View;)V

    .line 515
    return-void
.end method
