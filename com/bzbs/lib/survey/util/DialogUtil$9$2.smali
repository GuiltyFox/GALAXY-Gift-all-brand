.class Lcom/bzbs/lib/survey/util/DialogUtil$9$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/DialogUtil$9;

.field final synthetic val$strTextFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/DialogUtil$9;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/DialogUtil$9;

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$9;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;->val$strTextFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$9;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$9;->val$tvDateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$9$2;->val$strTextFinal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    return-void
.end method
