.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "AddressBookParsedResult.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 82
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->a:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v1}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 83
    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->a:[Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->b:[Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->c:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->e:[Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->g:[Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->h:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->i:Ljava/lang/String;

    .line 92
    iput-object p10, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    .line 93
    iput-object p11, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->k:[Ljava/lang/String;

    .line 94
    iput-object p12, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    .line 95
    iput-object p13, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->m:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->n:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->o:[Ljava/lang/String;

    .line 98
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->p:[Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 193
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 194
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 195
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 196
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 197
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->j:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 198
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 199
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 200
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 201
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->o:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 202
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 203
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->p:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 204
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
