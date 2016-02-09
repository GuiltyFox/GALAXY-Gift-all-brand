.class Lic/buzzebeeslib/activity/HelpCenterListActivity$4;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$4;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 528
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 503
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "txtReview":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 507
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->btnChat:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$26(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    :cond_1a
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->btnChat:Landroid/widget/Button;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$26(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/HelpCenterListActivity$4$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$4$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-void
.end method
