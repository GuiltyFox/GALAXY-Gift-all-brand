.class Lic/buzzebeeslib/activity/MarketPlaceActivity$1;
.super Ljava/lang/Object;
.source "MarketPlaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const v2, 0x14008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$1;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-virtual {v2, v0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    :try_start_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 177
    .local v1, "pid":I
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    .line 181
    .end local v1    # "pid":I
    :goto_21
    return-void

    .line 178
    :catch_22
    move-exception v2

    goto :goto_21
.end method
