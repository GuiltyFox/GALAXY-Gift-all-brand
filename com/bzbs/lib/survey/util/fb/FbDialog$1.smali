.class Lcom/bzbs/lib/survey/util/fb/FbDialog$1;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/fb/FbDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$1;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$1;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onCancel()V

    .line 102
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$1;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->dismiss()V

    .line 103
    return-void
.end method
