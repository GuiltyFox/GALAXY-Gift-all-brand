.class Lcom/bzbs/lib/survey/util/DialogUtil$7$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/DialogUtil$7;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/DialogUtil$7;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/DialogUtil$7;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$7$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$7$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$7;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$7;->val$tvSerial4:Landroid/widget/TextView;

    const-string/jumbo v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    return-void
.end method
