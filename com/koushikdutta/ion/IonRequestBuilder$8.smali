.class Lcom/koushikdutta/ion/IonRequestBuilder$8;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->a(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 732
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$8;->b:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder$8;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder$8;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 736
    return-void
.end method
