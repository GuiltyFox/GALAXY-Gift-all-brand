.class Lcom/bzbs/lib/survey/util/GPSTracker$1;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/GPSTracker;->showSettingsAlert(Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

.field final synthetic val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/GPSTracker;Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/GPSTracker;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$1;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$1;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$1;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-interface {v1}, Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;->OK()V

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$1;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    # getter for: Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->access$000(Lcom/bzbs/lib/survey/util/GPSTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
