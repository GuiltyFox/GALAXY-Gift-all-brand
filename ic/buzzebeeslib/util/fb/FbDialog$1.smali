.class Lic/buzzebeeslib/util/fb/FbDialog$1;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/fb/FbDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/util/fb/FbDialog;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/fb/FbDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/fb/FbDialog$1;->this$0:Lic/buzzebeeslib/util/fb/FbDialog;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lic/buzzebeeslib/util/fb/FbDialog$1;->this$0:Lic/buzzebeeslib/util/fb/FbDialog;

    # getter for: Lic/buzzebeeslib/util/fb/FbDialog;->mListener:Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;
    invoke-static {v0}, Lic/buzzebeeslib/util/fb/FbDialog;->access$0(Lic/buzzebeeslib/util/fb/FbDialog;)Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;->onCancel()V

    .line 102
    iget-object v0, p0, Lic/buzzebeeslib/util/fb/FbDialog$1;->this$0:Lic/buzzebeeslib/util/fb/FbDialog;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/fb/FbDialog;->dismiss()V

    .line 103
    return-void
.end method
