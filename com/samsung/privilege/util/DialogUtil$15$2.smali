.class Lcom/samsung/privilege/util/DialogUtil$15$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogUtil$15;

.field private final synthetic val$strTextFinal:Ljava/lang/String;

.field private final synthetic val$tvDateTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogUtil$15;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$15$2;->this$1:Lcom/samsung/privilege/util/DialogUtil$15;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$15$2;->val$tvDateTime:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$15$2;->val$strTextFinal:Ljava/lang/String;

    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$15$2;->val$tvDateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogUtil$15$2;->val$strTextFinal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    return-void
.end method
