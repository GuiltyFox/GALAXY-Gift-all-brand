.class Lcom/samsung/privilege/util/DialogLoginGift$35$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$35;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$35;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$35;)V
    .registers 2

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$35$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 1936
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1937
    return-void
.end method
