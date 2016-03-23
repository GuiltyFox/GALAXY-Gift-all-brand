.class Lcom/bzbs/lib/survey/util/DialogUtil$1$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/DialogUtil$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/DialogUtil$1;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 749
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvSerial4:Landroid/widget/TextView;

    const-string/jumbo v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvSerial4:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$imgProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$1$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$1;->val$tvTitleTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    return-void
.end method
