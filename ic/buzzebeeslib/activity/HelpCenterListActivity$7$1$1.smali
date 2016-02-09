.class Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$14(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 582
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$14(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1$1;->this$2:Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$7;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7$1;)Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$7;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->footerListView:Landroid/view/View;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$31(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 584
    :cond_33
    return-void
.end method
