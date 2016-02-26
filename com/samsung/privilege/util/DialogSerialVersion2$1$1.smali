.class Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialVersion2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/DialogSerialVersion2$1;

.field private final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$imgProgress:Landroid/widget/ImageView;

.field private final synthetic val$tvSerialNumber:Landroid/widget/TextView;

.field private final synthetic val$tvTitleTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialVersion2$1;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->this$1:Lcom/samsung/privilege/util/DialogSerialVersion2$1;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$tvSerialNumber:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$imgProgress:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$tvTitleTime:Landroid/widget/TextView;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 273
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$tvSerialNumber:Landroid/widget/TextView;

    const-string v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$tvSerialNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$imgProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$1$1;->val$tvTitleTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    return-void
.end method
