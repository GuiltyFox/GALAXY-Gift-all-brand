.class Lcom/bzbs/lib/survey/util/GPSTracker$3$1;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/GPSTracker$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

.field final synthetic val$chkNoShow:Landroid/widget/CheckBox;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/GPSTracker$3;Landroid/widget/CheckBox;Landroid/app/Dialog;)V
    .registers 4
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/GPSTracker$3;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->val$chkNoShow:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/GPSTracker$3;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->val$chkNoShow:Landroid/widget/CheckBox;

    # invokes: Lcom/bzbs/lib/survey/util/GPSTracker;->checkNoShow(Landroid/widget/CheckBox;)V
    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/GPSTracker;->access$100(Lcom/bzbs/lib/survey/util/GPSTracker;Landroid/widget/CheckBox;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/GPSTracker$3;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    # getter for: Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->access$000(Lcom/bzbs/lib/survey/util/GPSTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;->OK()V

    .line 219
    :cond_29
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 220
    return-void
.end method
