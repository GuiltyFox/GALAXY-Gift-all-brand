.class Lcom/bzbs/lib/survey/util/GPSTracker$2;
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
    .line 185
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$2;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$2;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker$2;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;->CANCEL()V

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 189
    return-void
.end method
