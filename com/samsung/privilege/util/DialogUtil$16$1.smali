.class Lcom/samsung/privilege/util/DialogUtil$16$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogUtil$16;

.field private final synthetic val$imgBarcode:Landroid/widget/ImageView;

.field private final synthetic val$tvSerial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogUtil$16;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$16$1;->this$1:Lcom/samsung/privilege/util/DialogUtil$16;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$16$1;->val$tvSerial:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$16$1;->val$imgBarcode:Landroid/widget/ImageView;

    .line 1815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$16$1;->val$tvSerial:Landroid/widget/TextView;

    const-string v1, " XXXXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$16$1;->val$imgBarcode:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1819
    return-void
.end method
