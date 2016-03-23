.class Lcom/bzbs/lib/survey/util/GPSTracker$3$2;
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
    .line 223
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->val$chkNoShow:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->this$0:Lcom/bzbs/lib/survey/util/GPSTracker;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->val$chkNoShow:Landroid/widget/CheckBox;

    # invokes: Lcom/bzbs/lib/survey/util/GPSTracker;->checkNoShow(Landroid/widget/CheckBox;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/GPSTracker;->access$100(Lcom/bzbs/lib/survey/util/GPSTracker;Landroid/widget/CheckBox;)V

    .line 227
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->this$1:Lcom/bzbs/lib/survey/util/GPSTracker$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/GPSTracker$3;->val$listener:Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    invoke-interface {v0}, Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;->CANCEL()V

    .line 228
    :cond_16
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker$3$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    return-void
.end method
