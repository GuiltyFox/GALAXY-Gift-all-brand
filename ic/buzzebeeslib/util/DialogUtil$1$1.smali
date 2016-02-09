.class Lic/buzzebeeslib/util/DialogUtil$1$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/DialogUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/DialogUtil$1;

.field private final synthetic val$btnSwithToBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$btnSwithToSerial:Landroid/widget/LinearLayout;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$imgProgress:Landroid/widget/ImageView;

.field private final synthetic val$tvSerial4:Landroid/widget/TextView;

.field private final synthetic val$tvTitleTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/DialogUtil$1;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->this$1:Lic/buzzebeeslib/util/DialogUtil$1;

    iput-object p2, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$tvSerial4:Landroid/widget/TextView;

    iput-object p3, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$imgProgress:Landroid/widget/ImageView;

    iput-object p9, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$tvTitleTime:Landroid/widget/TextView;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 241
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$tvSerial4:Landroid/widget/TextView;

    const-string v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$tvSerial4:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToSerial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$btnSwithToQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$imgProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$1$1;->val$tvTitleTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    return-void
.end method
