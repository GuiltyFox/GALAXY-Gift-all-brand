.class final Lcom/samsung/privilege/util/DialogSerialGift$5;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 4

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialGift$5;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 352
    return-void
.end method
