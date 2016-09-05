.class Lcom/facebook/GraphRequest$Attachment;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# instance fields
.field private final request:Lcom/facebook/GraphRequest;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    iput-object p1, p0, Lcom/facebook/GraphRequest$Attachment;->request:Lcom/facebook/GraphRequest;

    .line 1506
    iput-object p2, p0, Lcom/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    .line 1507
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/facebook/GraphRequest;
    .registers 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/facebook/GraphRequest$Attachment;->request:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    return-object v0
.end method
