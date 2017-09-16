.class Lcom/samsung/privilege/util/DialogSerialGift$1$2;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogSerialGift$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialGift$1;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$1$2;->a:Lcom/samsung/privilege/util/DialogSerialGift$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 210
    return-void
.end method
