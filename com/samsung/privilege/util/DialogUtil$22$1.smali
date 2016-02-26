.class Lcom/samsung/privilege/util/DialogUtil$22$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogUtil$22;

.field private final synthetic val$tvStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogUtil$22;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$22$1;->this$1:Lcom/samsung/privilege/util/DialogUtil$22;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$22$1;->val$tvStatus:Landroid/widget/TextView;

    .line 2259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$22$1;->val$tvStatus:Landroid/widget/TextView;

    const-string v1, "Done."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    return-void
.end method
