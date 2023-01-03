
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c5813103          	ld	sp,-936(sp) # 8000bc58 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	009060ef          	jal	ra,80006824 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	700030ef          	jal	ra,80004788 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    8000128c:	fd010113          	addi	sp,sp,-48
    80001290:	02113423          	sd	ra,40(sp)
    80001294:	02813023          	sd	s0,32(sp)
    80001298:	00913c23          	sd	s1,24(sp)
    8000129c:	01213823          	sd	s2,16(sp)
    800012a0:	01313423          	sd	s3,8(sp)
    800012a4:	01413023          	sd	s4,0(sp)
    800012a8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012ac:	00053783          	ld	a5,0(a0)
    800012b0:	04078263          	beqz	a5,800012f4 <_Z17destroy_slab_listPP6slab_s+0x68>
    800012b4:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    800012b8:	0107b783          	ld	a5,16(a5)
    800012bc:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    800012c0:	00000913          	li	s2,0
    while(*slab != nullptr)
    800012c4:	0004b583          	ld	a1,0(s1)
    800012c8:	02058863          	beqz	a1,800012f8 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    800012cc:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    800012d0:	00098613          	mv	a2,s3
    800012d4:	0000b797          	auipc	a5,0xb
    800012d8:	a1c7b783          	ld	a5,-1508(a5) # 8000bcf0 <_ZL13slabAllocator>
    800012dc:	0007b503          	ld	a0,0(a5)
    800012e0:	00002097          	auipc	ra,0x2
    800012e4:	e50080e7          	jalr	-432(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    800012e8:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    800012ec:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    800012f0:	fd5ff06f          	j	800012c4 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    800012f4:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    800012f8:	00090513          	mv	a0,s2
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	00013a03          	ld	s4,0(sp)
    80001314:	03010113          	addi	sp,sp,48
    80001318:	00008067          	ret

000000008000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000131c:	fc010113          	addi	sp,sp,-64
    80001320:	02113c23          	sd	ra,56(sp)
    80001324:	02813823          	sd	s0,48(sp)
    80001328:	02913423          	sd	s1,40(sp)
    8000132c:	03213023          	sd	s2,32(sp)
    80001330:	01313c23          	sd	s3,24(sp)
    80001334:	01413823          	sd	s4,16(sp)
    80001338:	01513423          	sd	s5,8(sp)
    8000133c:	04010413          	addi	s0,sp,64
    80001340:	00050493          	mv	s1,a0
    80001344:	00058513          	mv	a0,a1
    80001348:	00060a93          	mv	s5,a2
    8000134c:	00068a13          	mv	s4,a3
    80001350:	00070993          	mv	s3,a4
    80001354:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    80001358:	00048593          	mv	a1,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	efc080e7          	jalr	-260(ra) # 80001258 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    80001364:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    80001368:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    8000136c:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    80001370:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    80001374:	0404b423          	sd	zero,72(s1)
    80001378:	0404b823          	sd	zero,80(s1)
    8000137c:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    80001380:	0604ac23          	sw	zero,120(s1)
}
    80001384:	03813083          	ld	ra,56(sp)
    80001388:	03013403          	ld	s0,48(sp)
    8000138c:	02813483          	ld	s1,40(sp)
    80001390:	02013903          	ld	s2,32(sp)
    80001394:	01813983          	ld	s3,24(sp)
    80001398:	01013a03          	ld	s4,16(sp)
    8000139c:	00813a83          	ld	s5,8(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret

00000000800013a8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013a8:	fe010113          	addi	sp,sp,-32
    800013ac:	00113c23          	sd	ra,24(sp)
    800013b0:	00813823          	sd	s0,16(sp)
    800013b4:	00913423          	sd	s1,8(sp)
    800013b8:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800013bc:	0e050493          	addi	s1,a0,224

    slabAllocatorLocal->buddy = buddy;
    800013c0:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013c4:	00000793          	li	a5,0
    800013c8:	0140006f          	j	800013dc <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800013cc:	00379713          	slli	a4,a5,0x3
    800013d0:	00e50733          	add	a4,a0,a4
    800013d4:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	00c00713          	li	a4,12
    800013e0:	fef776e3          	bgeu	a4,a5,800013cc <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    800013e4:	00000793          	li	a5,0
    800013e8:	00000713          	li	a4,0
    800013ec:	08000693          	li	a3,128
    800013f0:	00200613          	li	a2,2
    800013f4:	00008597          	auipc	a1,0x8
    800013f8:	c2c58593          	addi	a1,a1,-980 # 80009020 <CONSOLE_STATUS+0x10>
    800013fc:	15050513          	addi	a0,a0,336
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f1c080e7          	jalr	-228(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001408:	00048513          	mv	a0,s1
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000142c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001430:	01d7d79b          	srliw	a5,a5,0x1d
    80001434:	00b785bb          	addw	a1,a5,a1
    80001438:	4035d71b          	sraiw	a4,a1,0x3
    8000143c:	00e50533          	add	a0,a0,a4
    80001440:	02854503          	lbu	a0,40(a0)
    80001444:	0075f593          	andi	a1,a1,7
    80001448:	40f585bb          	subw	a1,a1,a5
    8000144c:	40b5553b          	sraw	a0,a0,a1
}
    80001450:	00157513          	andi	a0,a0,1
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	02850703          	lb	a4,40(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	00100793          	li	a5,1
    80001490:	00b795bb          	sllw	a1,a5,a1
    80001494:	00b765b3          	or	a1,a4,a1
    80001498:	02b50423          	sb	a1,40(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	03010413          	addi	s0,sp,48
    800014c4:	00050913          	mv	s2,a0
    if(slab == nullptr)
    800014c8:	08050863          	beqz	a0,80001558 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014cc:	00000493          	li	s1,0
    800014d0:	01893783          	ld	a5,24(s2)
    800014d4:	02f4fe63          	bgeu	s1,a5,80001510 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    800014d8:	0004899b          	sext.w	s3,s1
    800014dc:	00098593          	mv	a1,s3
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    800014ec:	00050663          	beqz	a0,800014f8 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    800014f0:	00148493          	addi	s1,s1,1
    800014f4:	fddff06f          	j	800014d0 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    800014f8:	01093783          	ld	a5,16(s2)
    800014fc:	0607b783          	ld	a5,96(a5)
    80001500:	029784b3          	mul	s1,a5,s1
    80001504:	009904b3          	add	s1,s2,s1
    80001508:	42848493          	addi	s1,s1,1064
            index = i;
            break;
    8000150c:	00c0006f          	j	80001518 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001510:	00000493          	li	s1,0
    int index = -1;
    80001514:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001518:	02048063          	beqz	s1,80001538 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000152c:	02093783          	ld	a5,32(s2)
    80001530:	00178793          	addi	a5,a5,1
    80001534:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	03010113          	addi	sp,sp,48
    80001554:	00008067          	ret
        return nullptr;
    80001558:	00050493          	mv	s1,a0
    8000155c:	fddff06f          	j	80001538 <_Z14allocateObjectP6slab_s+0x90>

0000000080001560 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    8000156c:	02053783          	ld	a5,32(a0)
    80001570:	01853503          	ld	a0,24(a0)
    80001574:	40f50533          	sub	a0,a0,a5
}
    80001578:	00153513          	seqz	a0,a0
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001594:	02053503          	ld	a0,32(a0)
}
    80001598:	00153513          	seqz	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015b4:	00050e63          	beqz	a0,800015d0 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015b8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015bc:	0005b783          	ld	a5,0(a1)
    800015c0:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    800015c4:	00078463          	beqz	a5,800015cc <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    800015c8:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    800015cc:	00a5b023          	sd	a0,0(a1)
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    800015e8:	00053783          	ld	a5,0(a0)
    800015ec:	02078663          	beqz	a5,80001618 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    800015f0:	00853703          	ld	a4,8(a0)
    800015f4:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    800015f8:	00070663          	beqz	a4,80001604 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    800015fc:	00053783          	ld	a5,0(a0)
    80001600:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001604:	00053023          	sd	zero,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
    }
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001618:	00853783          	ld	a5,8(a0)
    8000161c:	00078463          	beqz	a5,80001624 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001620:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001624:	00853783          	ld	a5,8(a0)
    80001628:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000162c:	00053023          	sd	zero,0(a0)
    80001630:	00053423          	sd	zero,8(a0)
    80001634:	fd9ff06f          	j	8000160c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001638 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	01213023          	sd	s2,0(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001654:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001658:	05050593          	addi	a1,a0,80
    8000165c:	00090513          	mv	a0,s2
    80001660:	00000097          	auipc	ra,0x0
    80001664:	f7c080e7          	jalr	-132(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    80001668:	04848593          	addi	a1,s1,72
    8000166c:	00090513          	mv	a0,s2
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	00013903          	ld	s2,0(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret

0000000080001690 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001690:	fe010113          	addi	sp,sp,-32
    80001694:	00113c23          	sd	ra,24(sp)
    80001698:	00813823          	sd	s0,16(sp)
    8000169c:	00913423          	sd	s1,8(sp)
    800016a0:	01213023          	sd	s2,0(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ac:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016b0:	04050593          	addi	a1,a0,64
    800016b4:	00090513          	mv	a0,s2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f24080e7          	jalr	-220(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    800016c0:	05048593          	addi	a1,s1,80
    800016c4:	00090513          	mv	a0,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ee0080e7          	jalr	-288(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	00013903          	ld	s2,0(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050913          	mv	s2,a0
    80001704:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001708:	04850593          	addi	a1,a0,72
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ecc080e7          	jalr	-308(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001718:	05090593          	addi	a1,s2,80
    8000171c:	00048513          	mv	a0,s1
    80001720:	00000097          	auipc	ra,0x0
    80001724:	e88080e7          	jalr	-376(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	00013903          	ld	s2,0(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret

0000000080001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001740:	fe010113          	addi	sp,sp,-32
    80001744:	00113c23          	sd	ra,24(sp)
    80001748:	00813823          	sd	s0,16(sp)
    8000174c:	00913423          	sd	s1,8(sp)
    80001750:	01213023          	sd	s2,0(sp)
    80001754:	02010413          	addi	s0,sp,32
    80001758:	00050913          	mv	s2,a0
    8000175c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001760:	05050593          	addi	a1,a0,80
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	e74080e7          	jalr	-396(ra) # 800015dc <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    80001770:	04090593          	addi	a1,s2,64
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	e30080e7          	jalr	-464(ra) # 800015a8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001798:	fd010113          	addi	sp,sp,-48
    8000179c:	02113423          	sd	ra,40(sp)
    800017a0:	02813023          	sd	s0,32(sp)
    800017a4:	00913c23          	sd	s1,24(sp)
    800017a8:	01213823          	sd	s2,16(sp)
    800017ac:	01313423          	sd	s3,8(sp)
    800017b0:	03010413          	addi	s0,sp,48
    800017b4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800017b8:	05853583          	ld	a1,88(a0)
    800017bc:	0000a797          	auipc	a5,0xa
    800017c0:	5347b783          	ld	a5,1332(a5) # 8000bcf0 <_ZL13slabAllocator>
    800017c4:	0007b503          	ld	a0,0(a5)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	678080e7          	jalr	1656(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    800017d0:	08050c63          	beqz	a0,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    800017d4:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    800017d8:	0409b783          	ld	a5,64(s3)
    800017dc:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800017e0:	00078463          	beqz	a5,800017e8 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    800017e4:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    800017e8:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    800017ec:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    800017f0:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    800017f4:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    800017f8:	0589b683          	ld	a3,88(s3)
    800017fc:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001800:	bd868693          	addi	a3,a3,-1064
    80001804:	0609b783          	ld	a5,96(s3)
    80001808:	02f6d6b3          	divu	a3,a3,a5
    8000180c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001810:	00000713          	li	a4,0
    80001814:	00768793          	addi	a5,a3,7
    80001818:	0037d793          	srli	a5,a5,0x3
    8000181c:	00f77a63          	bgeu	a4,a5,80001830 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001820:	00e487b3          	add	a5,s1,a4
    80001824:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001828:	00170713          	addi	a4,a4,1
    8000182c:	fe9ff06f          	j	80001814 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    if(cachep->ctor != nullptr)
    80001830:	0689b783          	ld	a5,104(s3)
    80001834:	02078a63          	beqz	a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001838:	00000913          	li	s2,0
    8000183c:	0184b783          	ld	a5,24(s1)
    80001840:	02f97463          	bgeu	s2,a5,80001868 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001844:	0689b783          	ld	a5,104(s3)
    80001848:	0104b703          	ld	a4,16(s1)
    8000184c:	06073503          	ld	a0,96(a4)
    80001850:	03250533          	mul	a0,a0,s2
    80001854:	00a48533          	add	a0,s1,a0
    80001858:	42850513          	addi	a0,a0,1064
    8000185c:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001860:	00190913          	addi	s2,s2,1
    80001864:	fd9ff06f          	j	8000183c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    80001868:	02813083          	ld	ra,40(sp)
    8000186c:	02013403          	ld	s0,32(sp)
    80001870:	01813483          	ld	s1,24(sp)
    80001874:	01013903          	ld	s2,16(sp)
    80001878:	00813983          	ld	s3,8(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret

0000000080001884 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001890:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001894:	42850713          	addi	a4,a0,1064
    80001898:	00e7f663          	bgeu	a5,a4,800018a4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    8000189c:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018a0:	ff5ff06f          	j	80001894 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018a4:	bd878593          	addi	a1,a5,-1064 # bd8 <_entry-0x7ffff428>
    800018a8:	02a5f5b3          	remu	a1,a1,a0

    //return bestSize / BLOCK_SIZE;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ac:	00100693          	li	a3,1
    800018b0:	0080006f          	j	800018b8 <_Z18getOptimalSlabSizem+0x34>
    800018b4:	00168693          	addi	a3,a3,1
    800018b8:	00400713          	li	a4,4
    800018bc:	02d76063          	bltu	a4,a3,800018dc <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800018c0:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800018c4:	bd860713          	addi	a4,a2,-1064
    800018c8:	02a77733          	remu	a4,a4,a0
        if(newWaste < optimalWaste)
    800018cc:	feb774e3          	bgeu	a4,a1,800018b4 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800018d0:	00070593          	mv	a1,a4
            bestSize = newSize;
    800018d4:	00060793          	mv	a5,a2
    800018d8:	fddff06f          	j	800018b4 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800018dc:	00c7d513          	srli	a0,a5,0xc
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    800018f8:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    800018fc:	02050c63          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001900:	06058a63          	beqz	a1,80001974 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001904:	04853503          	ld	a0,72(a0)
    80001908:	0080006f          	j	80001910 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    8000190c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001910:	02050863          	beqz	a0,80001940 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001914:	01853783          	ld	a5,24(a0)
    80001918:	01053703          	ld	a4,16(a0)
    8000191c:	06073703          	ld	a4,96(a4)
    80001920:	02e787b3          	mul	a5,a5,a4
    80001924:	00a787b3          	add	a5,a5,a0
    80001928:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000192c:	feb570e3          	bgeu	a0,a1,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001930:	fcf5fee3          	bgeu	a1,a5,8000190c <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001940:	0506b503          	ld	a0,80(a3)
    80001944:	0080006f          	j	8000194c <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001948:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000194c:	fe0504e3          	beqz	a0,80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001950:	01853783          	ld	a5,24(a0)
    80001954:	01053703          	ld	a4,16(a0)
    80001958:	06073703          	ld	a4,96(a4)
    8000195c:	02e787b3          	mul	a5,a5,a4
    80001960:	00a787b3          	add	a5,a5,a0
    80001964:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001968:	feb570e3          	bgeu	a0,a1,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    8000196c:	fcf5fee3          	bgeu	a1,a5,80001948 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001970:	fc5ff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001974:	00058513          	mv	a0,a1
    80001978:	fbdff06f          	j	80001934 <_Z8findSlabP12kmem_cache_sPKv+0x48>

000000008000197c <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001988:	41f5d79b          	sraiw	a5,a1,0x1f
    8000198c:	01d7d79b          	srliw	a5,a5,0x1d
    80001990:	00b785bb          	addw	a1,a5,a1
    80001994:	4035d71b          	sraiw	a4,a1,0x3
    80001998:	00e50533          	add	a0,a0,a4
    8000199c:	02850703          	lb	a4,40(a0)
    800019a0:	0075f593          	andi	a1,a1,7
    800019a4:	40f585bb          	subw	a1,a1,a5
    800019a8:	00100793          	li	a5,1
    800019ac:	00b795bb          	sllw	a1,a5,a1
    800019b0:	fff5c593          	not	a1,a1
    800019b4:	00b775b3          	and	a1,a4,a1
    800019b8:	02b50423          	sb	a1,40(a0)
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    800019dc:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    800019e0:	00007517          	auipc	a0,0x7
    800019e4:	65050513          	addi	a0,a0,1616 # 80009030 <CONSOLE_STATUS+0x20>
    800019e8:	00002097          	auipc	ra,0x2
    800019ec:	d88080e7          	jalr	-632(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    800019f0:	01000613          	li	a2,16
    800019f4:	00048593          	mv	a1,s1
    800019f8:	00007517          	auipc	a0,0x7
    800019fc:	65050513          	addi	a0,a0,1616 # 80009048 <CONSOLE_STATUS+0x38>
    80001a00:	00002097          	auipc	ra,0x2
    80001a04:	e48080e7          	jalr	-440(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a08:	00a00613          	li	a2,10
    80001a0c:	0204b583          	ld	a1,32(s1)
    80001a10:	00007517          	auipc	a0,0x7
    80001a14:	64850513          	addi	a0,a0,1608 # 80009058 <CONSOLE_STATUS+0x48>
    80001a18:	00002097          	auipc	ra,0x2
    80001a1c:	e30080e7          	jalr	-464(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a20:	00a00613          	li	a2,10
    80001a24:	0184b583          	ld	a1,24(s1)
    80001a28:	00007517          	auipc	a0,0x7
    80001a2c:	65050513          	addi	a0,a0,1616 # 80009078 <CONSOLE_STATUS+0x68>
    80001a30:	00002097          	auipc	ra,0x2
    80001a34:	e18080e7          	jalr	-488(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret

0000000080001a4c <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001a4c:	12050a63          	beqz	a0,80001b80 <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001a50:	fd010113          	addi	sp,sp,-48
    80001a54:	02113423          	sd	ra,40(sp)
    80001a58:	02813023          	sd	s0,32(sp)
    80001a5c:	00913c23          	sd	s1,24(sp)
    80001a60:	01213823          	sd	s2,16(sp)
    80001a64:	01313423          	sd	s3,8(sp)
    80001a68:	01413023          	sd	s4,0(sp)
    80001a6c:	03010413          	addi	s0,sp,48
    80001a70:	00050493          	mv	s1,a0
    80001a74:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001a78:	08058463          	beqz	a1,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001a7c:	40a58933          	sub	s2,a1,a0
    80001a80:	bd890913          	addi	s2,s2,-1064
    80001a84:	01053a03          	ld	s4,16(a0)
    80001a88:	060a3783          	ld	a5,96(s4)
    80001a8c:	02f95933          	divu	s2,s2,a5
    80001a90:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001a94:	032787b3          	mul	a5,a5,s2
    80001a98:	00f507b3          	add	a5,a0,a5
    80001a9c:	42878793          	addi	a5,a5,1064
    80001aa0:	06f59063          	bne	a1,a5,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001aa4:	00090593          	mv	a1,s2
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	978080e7          	jalr	-1672(ra) # 80001420 <_Z13checkSetIndexP6slab_si>
    80001ab0:	04050863          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001ab4:	070a3783          	ld	a5,112(s4)
    80001ab8:	00078663          	beqz	a5,80001ac4 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001abc:	00098513          	mv	a0,s3
    80001ac0:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001ac4:	068a3783          	ld	a5,104(s4)
    80001ac8:	00078663          	beqz	a5,80001ad4 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001acc:	00098513          	mv	a0,s3
    80001ad0:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001ad4:	00090593          	mv	a1,s2
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	ea0080e7          	jalr	-352(ra) # 8000197c <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001ae4:	0184b703          	ld	a4,24(s1)
    80001ae8:	0204b783          	ld	a5,32(s1)
    80001aec:	02f70a63          	beq	a4,a5,80001b20 <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001af0:	00100713          	li	a4,1
    80001af4:	06e78663          	beq	a5,a4,80001b60 <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001af8:	fff78793          	addi	a5,a5,-1
    80001afc:	02f4b023          	sd	a5,32(s1)
}
    80001b00:	02813083          	ld	ra,40(sp)
    80001b04:	02013403          	ld	s0,32(sp)
    80001b08:	01813483          	ld	s1,24(sp)
    80001b0c:	01013903          	ld	s2,16(sp)
    80001b10:	00813983          	ld	s3,8(sp)
    80001b14:	00013a03          	ld	s4,0(sp)
    80001b18:	03010113          	addi	sp,sp,48
    80001b1c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b20:	00048593          	mv	a1,s1
    80001b24:	0104b503          	ld	a0,16(s1)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	bc0080e7          	jalr	-1088(ra) # 800016e8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b30:	0204b783          	ld	a5,32(s1)
    80001b34:	fff78793          	addi	a5,a5,-1
    80001b38:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b3c:	00048513          	mv	a0,s1
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	a48080e7          	jalr	-1464(ra) # 80001588 <_Z5emptyP6slab_s>
    80001b48:	fa050ce3          	beqz	a0,80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001b4c:	00048593          	mv	a1,s1
    80001b50:	0104b503          	ld	a0,16(s1)
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	bec080e7          	jalr	-1044(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001b5c:	fa5ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001b60:	00048593          	mv	a1,s1
    80001b64:	0104b503          	ld	a0,16(s1)
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	bd8080e7          	jalr	-1064(ra) # 80001740 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b70:	0204b783          	ld	a5,32(s1)
    80001b74:	fff78793          	addi	a5,a5,-1
    80001b78:	02f4b023          	sd	a5,32(s1)
    80001b7c:	f85ff06f          	j	80001b00 <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001b80:	00008067          	ret

0000000080001b84 <_Z9kmem_initPvi>:
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00113423          	sd	ra,8(sp)
    80001b8c:	00813023          	sd	s0,0(sp)
    80001b90:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	4bc080e7          	jalr	1212(ra) # 80003050 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	80c080e7          	jalr	-2036(ra) # 800013a8 <_Z19slab_allocator_initP14buddyAllocator>
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	14a7b623          	sd	a0,332(a5) # 8000bcf0 <_ZL13slabAllocator>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00913423          	sd	s1,8(sp)
    80001bcc:	01213023          	sd	s2,0(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001bd8:	10050a63          	beqz	a0,80001cec <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001bdc:	05053503          	ld	a0,80(a0)
    80001be0:	04051a63          	bnez	a0,80001c34 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001be4:	0404b503          	ld	a0,64(s1)
    80001be8:	08050a63          	beqz	a0,80001c7c <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	8bc080e7          	jalr	-1860(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001bf4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001bf8:	0404b503          	ld	a0,64(s1)
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	98c080e7          	jalr	-1652(ra) # 80001588 <_Z5emptyP6slab_s>
    80001c04:	04051663          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c08:	00048513          	mv	a0,s1
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	a84080e7          	jalr	-1404(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c14:	0504b503          	ld	a0,80(s1)
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	948080e7          	jalr	-1720(ra) # 80001560 <_Z4fullP6slab_s>
    80001c20:	02050863          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	a10080e7          	jalr	-1520(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c30:	0200006f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	874080e7          	jalr	-1932(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c3c:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c40:	0504b503          	ld	a0,80(s1)
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	91c080e7          	jalr	-1764(ra) # 80001560 <_Z4fullP6slab_s>
    80001c4c:	02051063          	bnez	a0,80001c6c <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c50:	00090513          	mv	a0,s2
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	00013903          	ld	s2,0(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret
            putPartialToFull(cachep);
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	9c8080e7          	jalr	-1592(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001c78:	fd9ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	b18080e7          	jalr	-1256(ra) # 80001798 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001c88:	0404b903          	ld	s2,64(s1)
    80001c8c:	04090863          	beqz	s2,80001cdc <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c90:	00090513          	mv	a0,s2
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	814080e7          	jalr	-2028(ra) # 800014a8 <_Z14allocateObjectP6slab_s>
    80001c9c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ca0:	0404b503          	ld	a0,64(s1)
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	8e4080e7          	jalr	-1820(ra) # 80001588 <_Z5emptyP6slab_s>
    80001cac:	fa0512e3          	bnez	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9dc080e7          	jalr	-1572(ra) # 80001690 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001cbc:	0504b503          	ld	a0,80(s1)
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	8a0080e7          	jalr	-1888(ra) # 80001560 <_Z4fullP6slab_s>
    80001cc8:	f80504e3          	beqz	a0,80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001ccc:	00048513          	mv	a0,s1
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	968080e7          	jalr	-1688(ra) # 80001638 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cd8:	f79ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001cdc:	0784a783          	lw	a5,120(s1)
    80001ce0:	0017e793          	ori	a5,a5,1
    80001ce4:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001ce8:	f69ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001cec:	00050913          	mv	s2,a0
    80001cf0:	f61ff06f          	j	80001c50 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001cf4:	fc010113          	addi	sp,sp,-64
    80001cf8:	02113c23          	sd	ra,56(sp)
    80001cfc:	02813823          	sd	s0,48(sp)
    80001d00:	02913423          	sd	s1,40(sp)
    80001d04:	03213023          	sd	s2,32(sp)
    80001d08:	01313c23          	sd	s3,24(sp)
    80001d0c:	01413823          	sd	s4,16(sp)
    80001d10:	01513423          	sd	s5,8(sp)
    80001d14:	04010413          	addi	s0,sp,64
    80001d18:	00050993          	mv	s3,a0
    80001d1c:	00058913          	mv	s2,a1
    80001d20:	00060a13          	mv	s4,a2
    80001d24:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d28:	0000a517          	auipc	a0,0xa
    80001d2c:	fc853503          	ld	a0,-56(a0) # 8000bcf0 <_ZL13slabAllocator>
    80001d30:	07050513          	addi	a0,a0,112
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	e88080e7          	jalr	-376(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d3c:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d40:	02050863          	beqz	a0,80001d70 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d44:	00090513          	mv	a0,s2
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	b3c080e7          	jalr	-1220(ra) # 80001884 <_Z18getOptimalSlabSizem>
    80001d50:	00050613          	mv	a2,a0
    80001d54:	000a8793          	mv	a5,s5
    80001d58:	000a0713          	mv	a4,s4
    80001d5c:	00090693          	mv	a3,s2
    80001d60:	00098593          	mv	a1,s3
    80001d64:	00048513          	mv	a0,s1
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	5b4080e7          	jalr	1460(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d70:	00048513          	mv	a0,s1
    80001d74:	03813083          	ld	ra,56(sp)
    80001d78:	03013403          	ld	s0,48(sp)
    80001d7c:	02813483          	ld	s1,40(sp)
    80001d80:	02013903          	ld	s2,32(sp)
    80001d84:	01813983          	ld	s3,24(sp)
    80001d88:	01013a03          	ld	s4,16(sp)
    80001d8c:	00813a83          	ld	s5,8(sp)
    80001d90:	04010113          	addi	sp,sp,64
    80001d94:	00008067          	ret

0000000080001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001d98:	04050663          	beqz	a0,80001de4 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001db4:	00058e63          	beqz	a1,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	b34080e7          	jalr	-1228(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001dc0:	00050863          	beqz	a0,80001dd0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001dc4:	00048593          	mv	a1,s1
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	c84080e7          	jalr	-892(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    80001de4:	00008067          	ret

0000000080001de8 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001de8:	14050c63          	beqz	a0,80001f40 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	01213023          	sd	s2,0(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	28850513          	addi	a0,a0,648 # 80009090 <CONSOLE_STATUS+0x80>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	960080e7          	jalr	-1696(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e18:	00007517          	auipc	a0,0x7
    80001e1c:	28850513          	addi	a0,a0,648 # 800090a0 <CONSOLE_STATUS+0x90>
    80001e20:	00002097          	auipc	ra,0x2
    80001e24:	950080e7          	jalr	-1712(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e28:	00007517          	auipc	a0,0x7
    80001e2c:	2b050513          	addi	a0,a0,688 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001e30:	00002097          	auipc	ra,0x2
    80001e34:	940080e7          	jalr	-1728(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e38:	00090513          	mv	a0,s2
    80001e3c:	00002097          	auipc	ra,0x2
    80001e40:	934080e7          	jalr	-1740(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    80001e44:	00007517          	auipc	a0,0x7
    80001e48:	33c50513          	addi	a0,a0,828 # 80009180 <CONSOLE_STATUS+0x170>
    80001e4c:	00002097          	auipc	ra,0x2
    80001e50:	924080e7          	jalr	-1756(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001e54:	00a00613          	li	a2,10
    80001e58:	05893583          	ld	a1,88(s2)
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	28c50513          	addi	a0,a0,652 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001e64:	00002097          	auipc	ra,0x2
    80001e68:	9e4080e7          	jalr	-1564(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001e6c:	00a00613          	li	a2,10
    80001e70:	06093583          	ld	a1,96(s2)
    80001e74:	00007517          	auipc	a0,0x7
    80001e78:	29450513          	addi	a0,a0,660 # 80009108 <CONSOLE_STATUS+0xf8>
    80001e7c:	00002097          	auipc	ra,0x2
    80001e80:	9cc080e7          	jalr	-1588(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	2a450513          	addi	a0,a0,676 # 80009128 <CONSOLE_STATUS+0x118>
    80001e8c:	00002097          	auipc	ra,0x2
    80001e90:	8e4080e7          	jalr	-1820(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001e94:	00007517          	auipc	a0,0x7
    80001e98:	2b450513          	addi	a0,a0,692 # 80009148 <CONSOLE_STATUS+0x138>
    80001e9c:	00002097          	auipc	ra,0x2
    80001ea0:	8d4080e7          	jalr	-1836(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ea4:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ea8:	00048c63          	beqz	s1,80001ec0 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	b18080e7          	jalr	-1256(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001eb8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ebc:	fedff06f          	j	80001ea8 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001ec0:	00007517          	auipc	a0,0x7
    80001ec4:	29850513          	addi	a0,a0,664 # 80009158 <CONSOLE_STATUS+0x148>
    80001ec8:	00002097          	auipc	ra,0x2
    80001ecc:	8a8080e7          	jalr	-1880(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001ed0:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001ed4:	00048c63          	beqz	s1,80001eec <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	aec080e7          	jalr	-1300(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001ee4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ee8:	fedff06f          	j	80001ed4 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001eec:	00007517          	auipc	a0,0x7
    80001ef0:	27c50513          	addi	a0,a0,636 # 80009168 <CONSOLE_STATUS+0x158>
    80001ef4:	00002097          	auipc	ra,0x2
    80001ef8:	87c080e7          	jalr	-1924(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001efc:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f00:	00048c63          	beqz	s1,80001f18 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f04:	00048513          	mv	a0,s1
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	ac0080e7          	jalr	-1344(ra) # 800019c8 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f10:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f14:	fedff06f          	j	80001f00 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001f18:	00007517          	auipc	a0,0x7
    80001f1c:	17850513          	addi	a0,a0,376 # 80009090 <CONSOLE_STATUS+0x80>
    80001f20:	00002097          	auipc	ra,0x2
    80001f24:	850080e7          	jalr	-1968(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	00013903          	ld	s2,0(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret
    80001f40:	00008067          	ret

0000000080001f44 <_Z22printSlabAllocatorInfov>:
{
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001f58:	00007517          	auipc	a0,0x7
    80001f5c:	22050513          	addi	a0,a0,544 # 80009178 <CONSOLE_STATUS+0x168>
    80001f60:	00002097          	auipc	ra,0x2
    80001f64:	810080e7          	jalr	-2032(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	22050513          	addi	a0,a0,544 # 80009188 <CONSOLE_STATUS+0x178>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	800080e7          	jalr	-2048(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001f78:	0000a497          	auipc	s1,0xa
    80001f7c:	d7848493          	addi	s1,s1,-648 # 8000bcf0 <_ZL13slabAllocator>
    80001f80:	0004b783          	ld	a5,0(s1)
    80001f84:	01000613          	li	a2,16
    80001f88:	0007b583          	ld	a1,0(a5)
    80001f8c:	00007517          	auipc	a0,0x7
    80001f90:	24c50513          	addi	a0,a0,588 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001f94:	00002097          	auipc	ra,0x2
    80001f98:	8b4080e7          	jalr	-1868(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001f9c:	01000613          	li	a2,16
    80001fa0:	0004b583          	ld	a1,0(s1)
    80001fa4:	00007517          	auipc	a0,0x7
    80001fa8:	25450513          	addi	a0,a0,596 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80001fac:	00002097          	auipc	ra,0x2
    80001fb0:	89c080e7          	jalr	-1892(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	25c50513          	addi	a0,a0,604 # 80009210 <CONSOLE_STATUS+0x200>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	7b4080e7          	jalr	1972(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001fc4:	0004b503          	ld	a0,0(s1)
    80001fc8:	07050513          	addi	a0,a0,112
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	e1c080e7          	jalr	-484(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001fd4:	00007517          	auipc	a0,0x7
    80001fd8:	25450513          	addi	a0,a0,596 # 80009228 <CONSOLE_STATUS+0x218>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	794080e7          	jalr	1940(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001fe4:	00000493          	li	s1,0
    80001fe8:	0100006f          	j	80001ff8 <_Z22printSlabAllocatorInfov+0xb4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	dfc080e7          	jalr	-516(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001ff4:	00148493          	addi	s1,s1,1
    80001ff8:	00c00793          	li	a5,12
    80001ffc:	0297e063          	bltu	a5,s1,8000201c <_Z22printSlabAllocatorInfov+0xd8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002000:	00349793          	slli	a5,s1,0x3
    80002004:	0000a717          	auipc	a4,0xa
    80002008:	cec73703          	ld	a4,-788(a4) # 8000bcf0 <_ZL13slabAllocator>
    8000200c:	00f707b3          	add	a5,a4,a5
    80002010:	0087b503          	ld	a0,8(a5)
    80002014:	fc051ce3          	bnez	a0,80001fec <_Z22printSlabAllocatorInfov+0xa8>
    80002018:	fddff06f          	j	80001ff4 <_Z22printSlabAllocatorInfov+0xb0>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000201c:	00007517          	auipc	a0,0x7
    80002020:	15c50513          	addi	a0,a0,348 # 80009178 <CONSOLE_STATUS+0x168>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	74c080e7          	jalr	1868(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret

0000000080002040 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80002040:	fd010113          	addi	sp,sp,-48
    80002044:	02113423          	sd	ra,40(sp)
    80002048:	02813023          	sd	s0,32(sp)
    8000204c:	00913c23          	sd	s1,24(sp)
    80002050:	01213823          	sd	s2,16(sp)
    80002054:	01313423          	sd	s3,8(sp)
    80002058:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	c68080e7          	jalr	-920(ra) # 80002cc4 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002064:	00400793          	li	a5,4
    80002068:	00a7fa63          	bgeu	a5,a0,8000207c <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000206c:	01100793          	li	a5,17
    80002070:	00a7f863          	bgeu	a5,a0,80002080 <_Z7kmallocm+0x40>
        return nullptr;
    80002074:	00000913          	li	s2,0
    80002078:	04c0006f          	j	800020c4 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    8000207c:	00500513          	li	a0,5
    size = (1 << level);
    80002080:	00100693          	li	a3,1
    80002084:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002088:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    8000208c:	0000a917          	auipc	s2,0xa
    80002090:	c6493903          	ld	s2,-924(s2) # 8000bcf0 <_ZL13slabAllocator>
    80002094:	00349793          	slli	a5,s1,0x3
    80002098:	00f907b3          	add	a5,s2,a5
    8000209c:	0087b783          	ld	a5,8(a5)
    800020a0:	04078263          	beqz	a5,800020e4 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800020a4:	00349513          	slli	a0,s1,0x3
    800020a8:	0000a497          	auipc	s1,0xa
    800020ac:	c484b483          	ld	s1,-952(s1) # 8000bcf0 <_ZL13slabAllocator>
    800020b0:	00a48533          	add	a0,s1,a0
    800020b4:	00853503          	ld	a0,8(a0)
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	b04080e7          	jalr	-1276(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020c0:	00050913          	mv	s2,a0
}
    800020c4:	00090513          	mv	a0,s2
    800020c8:	02813083          	ld	ra,40(sp)
    800020cc:	02013403          	ld	s0,32(sp)
    800020d0:	01813483          	ld	s1,24(sp)
    800020d4:	01013903          	ld	s2,16(sp)
    800020d8:	00813983          	ld	s3,8(sp)
    800020dc:	03010113          	addi	sp,sp,48
    800020e0:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    800020e4:	07090513          	addi	a0,s2,112
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	ad4080e7          	jalr	-1324(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800020f0:	00349713          	slli	a4,s1,0x3
    800020f4:	00e90933          	add	s2,s2,a4
    800020f8:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    800020fc:	0000a797          	auipc	a5,0xa
    80002100:	bf47b783          	ld	a5,-1036(a5) # 8000bcf0 <_ZL13slabAllocator>
    80002104:	00e787b3          	add	a5,a5,a4
    80002108:	0087b903          	ld	s2,8(a5)
    8000210c:	fa090ce3          	beqz	s2,800020c4 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    80002110:	00098513          	mv	a0,s3
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	770080e7          	jalr	1904(ra) # 80001884 <_Z18getOptimalSlabSizem>
    8000211c:	00050613          	mv	a2,a0
    80002120:	00000793          	li	a5,0
    80002124:	00000713          	li	a4,0
    80002128:	00098693          	mv	a3,s3
    8000212c:	00007597          	auipc	a1,0x7
    80002130:	11458593          	addi	a1,a1,276 # 80009240 <CONSOLE_STATUS+0x230>
    80002134:	00090513          	mv	a0,s2
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	1e4080e7          	jalr	484(ra) # 8000131c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    80002140:	f65ff06f          	j	800020a4 <_Z7kmallocm+0x64>

0000000080002144 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002144:	08050263          	beqz	a0,800021c8 <_Z5kfreePKv+0x84>
{
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	01213023          	sd	s2,0(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002164:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80002168:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000216c:	00c00793          	li	a5,12
    80002170:	0297e863          	bltu	a5,s1,800021a0 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002174:	00349793          	slli	a5,s1,0x3
    80002178:	0000a717          	auipc	a4,0xa
    8000217c:	b7873703          	ld	a4,-1160(a4) # 8000bcf0 <_ZL13slabAllocator>
    80002180:	00f707b3          	add	a5,a4,a5
    80002184:	00090593          	mv	a1,s2
    80002188:	0087b503          	ld	a0,8(a5)
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	760080e7          	jalr	1888(ra) # 800018ec <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002194:	00051663          	bnez	a0,800021a0 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002198:	00148493          	addi	s1,s1,1
    8000219c:	fd1ff06f          	j	8000216c <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021a0:	00050863          	beqz	a0,800021b0 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    800021a4:	00090593          	mv	a1,s2
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	8a4080e7          	jalr	-1884(ra) # 80001a4c <_Z16free_slab_objectP6slab_sPKv>
    }
}
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
    800021c8:	00008067          	ret

00000000800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	00050493          	mv	s1,a0
    //if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    //{
    //    cachep->errors|=DESTROY_ERROR;
    //    return;
    //}
    destroy_slab_list(&cachep->slabs_empty);
    800021e4:	04050513          	addi	a0,a0,64
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	0a4080e7          	jalr	164(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800021f0:	05048513          	addi	a0,s1,80
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	098080e7          	jalr	152(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800021fc:	04848513          	addi	a0,s1,72
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	08c080e7          	jalr	140(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002208:	00048593          	mv	a1,s1
    8000220c:	0000a517          	auipc	a0,0xa
    80002210:	ae453503          	ld	a0,-1308(a0) # 8000bcf0 <_ZL13slabAllocator>
    80002214:	07050513          	addi	a0,a0,112
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	b80080e7          	jalr	-1152(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret

0000000080002234 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002234:	02050863          	beqz	a0,80002264 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002248:	04050513          	addi	a0,a0,64
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	040080e7          	jalr	64(ra) # 8000128c <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret
        return 0;
    80002264:	00000513          	li	a0,0
}
    80002268:	00008067          	ret

000000008000226c <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000226c:	06050a63          	beqz	a0,800022e0 <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002288:	07852783          	lw	a5,120(a0)
    8000228c:	0017f793          	andi	a5,a5,1
    80002290:	02079463          	bnez	a5,800022b8 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002294:	0784a783          	lw	a5,120(s1)
    80002298:	0027f793          	andi	a5,a5,2
    8000229c:	02079863          	bnez	a5,800022cc <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022a0:	0784a503          	lw	a0,120(s1)
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    800022b8:	00007517          	auipc	a0,0x7
    800022bc:	fa050513          	addi	a0,a0,-96 # 80009258 <CONSOLE_STATUS+0x248>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	4b0080e7          	jalr	1200(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    800022c8:	fcdff06f          	j	80002294 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    800022cc:	00007517          	auipc	a0,0x7
    800022d0:	f9c50513          	addi	a0,a0,-100 # 80009268 <CONSOLE_STATUS+0x258>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	49c080e7          	jalr	1180(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    800022dc:	fc5ff06f          	j	800022a0 <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    800022e0:	00000513          	li	a0,0
}
    800022e4:	00008067          	ret

00000000800022e8 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800022f4:	03f50513          	addi	a0,a0,63
    800022f8:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    800022fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002300:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002304:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80002308:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002324:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80002328:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000232c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002330:	00050513          	mv	a0,a0

    return result;
}
    80002334:	0005051b          	sext.w	a0,a0
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    //if(stack_space == 0)
    //    return -1;

    //initialize registers
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    80002350:	00100793          	li	a5,1
    80002354:	00078713          	mv	a4,a5
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002358:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000235c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002360:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002364:	01100793          	li	a5,17
    80002368:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000236c:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002370:	00050513          	mv	a0,a0

    return result;
}
    80002374:	0005051b          	sext.w	a0,a0
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00813423          	sd	s0,8(sp)
    8000238c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002390:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002394:	00000073          	ecall
}
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_Z11thread_exitv>:

int thread_exit()
{
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800023b0:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    800023b4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023b8:	00050513          	mv	a0,a0
    return result;
}
    800023bc:	0005051b          	sext.w	a0,a0
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    800023d8:	02059593          	slli	a1,a1,0x20
    800023dc:	0205d593          	srli	a1,a1,0x20
    800023e0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800023e4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800023e8:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800023ec:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023f0:	00050513          	mv	a0,a0
    return result;
}
    800023f4:	0005051b          	sext.w	a0,a0
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00813423          	sd	s0,8(sp)
    8000240c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002410:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002414:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80002418:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000241c:	00050513          	mv	a0,a0
    return result;
}
    80002420:	0005051b          	sext.w	a0,a0
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000243c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80002440:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80002444:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002448:	00050513          	mv	a0,a0
    return result;
}
    8000244c:	0005051b          	sext.w	a0,a0
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80002468:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000246c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80002470:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002474:	00050513          	mv	a0,a0
    return result;
}
    80002478:	0005051b          	sext.w	a0,a0
    8000247c:	00813403          	ld	s0,8(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00813423          	sd	s0,8(sp)
    80002490:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002494:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80002498:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000249c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024a0:	00050513          	mv	a0,a0
    return result;
}
    800024a4:	0005051b          	sext.w	a0,a0
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_Z12thread_startPv>:

int thread_start(void* p)
{
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813423          	sd	s0,8(sp)
    800024bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    800024c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    800024c4:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    800024c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024cc:	00050513          	mv	a0,a0
    return result;
}
    800024d0:	0005051b          	sext.w	a0,a0
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
    //if(stack_space == 0)
    //    return -1;

    //initialize registers
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    800024ec:	00100793          	li	a5,1
    800024f0:	00078713          	mv	a4,a5
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800024f4:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800024f8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800024fc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002500:	01400793          	li	a5,20
    80002504:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80002508:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000250c:	00050513          	mv	a0,a0
    return result;
}
    80002510:	0005051b          	sext.w	a0,a0
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_Z4getcv>:

char getc()
{
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000252c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80002530:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002534:	00050513          	mv	a0,a0
    return (char)result;
}
    80002538:	0ff57513          	andi	a0,a0,255
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Z4putcc>:

void putc(char c)
{
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813423          	sd	s0,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002554:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80002558:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000255c:	00000073          	ecall
}
    80002560:	00813403          	ld	s0,8(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret

000000008000256c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00813423          	sd	s0,8(sp)
    80002574:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80002578:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000257c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002580:	00050513          	mv	a0,a0
    return (char)result;
}
    80002584:	0ff57513          	andi	a0,a0,255
    80002588:	00813403          	ld	s0,8(sp)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret

0000000080002594 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002594:	ff010113          	addi	sp,sp,-16
    80002598:	00813423          	sd	s0,8(sp)
    8000259c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800025a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    800025a4:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    800025a8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800025ac:	00050513          	mv	a0,a0
    return (char)result;
}
    800025b0:	0ff57513          	andi	a0,a0,255
    800025b4:	00813403          	ld	s0,8(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	fc4080e7          	jalr	-60(ra) # 80002594 <_Z17thread_delete_pcbP7_thread>
    800025d8:	00813083          	ld	ra,8(sp)
    800025dc:	00013403          	ld	s0,0(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800025f8:	00002097          	auipc	ra,0x2
    800025fc:	05c080e7          	jalr	92(ra) # 80004654 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002600:	00009797          	auipc	a5,0x9
    80002604:	6f87b783          	ld	a5,1784(a5) # 8000bcf8 <_ZN3PCB7runningE>
    80002608:	0287b703          	ld	a4,40(a5)
    8000260c:	0307b503          	ld	a0,48(a5)
    80002610:	000700e7          	jalr	a4

    thread_exit();
    80002614:	00000097          	auipc	ra,0x0
    80002618:	d90080e7          	jalr	-624(ra) # 800023a4 <_Z11thread_exitv>
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    })
    80002638:	00050023          	sb	zero,0(a0)
    8000263c:	00e53c23          	sd	a4,24(a0)
    80002640:	02053023          	sd	zero,32(a0)
    80002644:	02b53423          	sd	a1,40(a0)
    80002648:	02c53823          	sd	a2,48(a0)
    8000264c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002650:	000017b7          	lui	a5,0x1
    80002654:	00f686b3          	add	a3,a3,a5
    })
    80002658:	04d53423          	sd	a3,72(a0)
    8000265c:	00000797          	auipc	a5,0x0
    80002660:	f8c78793          	addi	a5,a5,-116 # 800025e8 <_ZN3PCB6runnerEv>
    80002664:	04f53823          	sd	a5,80(a0)
    80002668:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000266c:	00053423          	sd	zero,8(a0)
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN3PCB5startEv>:
{
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	39c080e7          	jalr	924(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
}
    80002694:	00813083          	ld	ra,8(sp)
    80002698:	00013403          	ld	s0,0(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800026a4:	fe010113          	addi	sp,sp,-32
    800026a8:	00113c23          	sd	ra,24(sp)
    800026ac:	00813823          	sd	s0,16(sp)
    800026b0:	00913423          	sd	s1,8(sp)
    800026b4:	01213023          	sd	s2,0(sp)
    800026b8:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800026bc:	00009497          	auipc	s1,0x9
    800026c0:	63c4b483          	ld	s1,1596(s1) # 8000bcf8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800026c4:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800026c8:	00100793          	li	a5,1
    800026cc:	04f70a63          	beq	a4,a5,80002720 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	3ac080e7          	jalr	940(ra) # 80003a7c <_ZN9Scheduler3getEv>
    800026d8:	00009917          	auipc	s2,0x9
    800026dc:	62090913          	addi	s2,s2,1568 # 8000bcf8 <_ZN3PCB7runningE>
    800026e0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800026e4:	00100793          	li	a5,1
    800026e8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800026ec:	00002097          	auipc	ra,0x2
    800026f0:	05c080e7          	jalr	92(ra) # 80004748 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800026f4:	00093583          	ld	a1,0(s2)
    800026f8:	04858593          	addi	a1,a1,72
    800026fc:	04848513          	addi	a0,s1,72
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	b38080e7          	jalr	-1224(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002708:	01813083          	ld	ra,24(sp)
    8000270c:	01013403          	ld	s0,16(sp)
    80002710:	00813483          	ld	s1,8(sp)
    80002714:	00013903          	ld	s2,0(sp)
    80002718:	02010113          	addi	sp,sp,32
    8000271c:	00008067          	ret
        Scheduler::put(old);
    80002720:	00048513          	mv	a0,s1
    80002724:	00001097          	auipc	ra,0x1
    80002728:	304080e7          	jalr	772(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
    8000272c:	fa5ff06f          	j	800026d0 <_ZN3PCB8dispatchEv+0x2c>

0000000080002730 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002740:	00009797          	auipc	a5,0x9
    80002744:	5587b783          	ld	a5,1368(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002748:	0007b503          	ld	a0,0(a5)
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	470080e7          	jalr	1136(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00113423          	sd	ra,8(sp)
    8000276c:	00813023          	sd	s0,0(sp)
    80002770:	01010413          	addi	s0,sp,16
    80002774:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002778:	00009797          	auipc	a5,0x9
    8000277c:	5207b783          	ld	a5,1312(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002780:	0007b503          	ld	a0,0(a5)
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	614080e7          	jalr	1556(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	00813023          	sd	s0,0(sp)
    800027a8:	01010413          	addi	s0,sp,16
{
    //MemoryAllocator::kfree(beginSP);
    kfree(beginSP);
    800027ac:	03853503          	ld	a0,56(a0)
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	994080e7          	jalr	-1644(ra) # 80002144 <_Z5kfreePKv>
}
    800027b8:	00813083          	ld	ra,8(sp)
    800027bc:	00013403          	ld	s0,0(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800027c8:	fd010113          	addi	sp,sp,-48
    800027cc:	02113423          	sd	ra,40(sp)
    800027d0:	02813023          	sd	s0,32(sp)
    800027d4:	00913c23          	sd	s1,24(sp)
    800027d8:	01213823          	sd	s2,16(sp)
    800027dc:	01313423          	sd	s3,8(sp)
    800027e0:	01413023          	sd	s4,0(sp)
    800027e4:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800027e8:	06000513          	li	a0,96
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	f44080e7          	jalr	-188(ra) # 80002730 <_ZN3PCBnwEm>
    800027f4:	00050493          	mv	s1,a0
    800027f8:	00000713          	li	a4,0
    800027fc:	00000693          	li	a3,0
    80002800:	00000613          	li	a2,0
    80002804:	00000593          	li	a1,0
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	e24080e7          	jalr	-476(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002810:	00100793          	li	a5,1
    80002814:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002818:	00009917          	auipc	s2,0x9
    8000281c:	4e090913          	addi	s2,s2,1248 # 8000bcf8 <_ZN3PCB7runningE>
    80002820:	00993023          	sd	s1,0(s2)
    80002824:	00100a13          	li	s4,1
    80002828:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    8000282c:	00001537          	lui	a0,0x1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	810080e7          	jalr	-2032(ra) # 80002040 <_Z7kmallocm>
    80002838:	00050993          	mv	s3,a0
                              //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    8000283c:	06000513          	li	a0,96
    80002840:	00000097          	auipc	ra,0x0
    80002844:	ef0080e7          	jalr	-272(ra) # 80002730 <_ZN3PCBnwEm>
    80002848:	00050493          	mv	s1,a0
    8000284c:	00200713          	li	a4,2
    80002850:	00098693          	mv	a3,s3
    80002854:	00000613          	li	a2,0
    80002858:	00009597          	auipc	a1,0x9
    8000285c:	4105b583          	ld	a1,1040(a1) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	dcc080e7          	jalr	-564(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002868:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    8000286c:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002870:	00893503          	ld	a0,8(s2)
    80002874:	00000097          	auipc	ra,0x0
    80002878:	e08080e7          	jalr	-504(ra) # 8000267c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           kmalloc(DEFAULT_STACK_SIZE),
    8000287c:	00001537          	lui	a0,0x1
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	7c0080e7          	jalr	1984(ra) # 80002040 <_Z7kmallocm>
    80002888:	00050993          	mv	s3,a0
                           //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                           DEFAULT_TIME_SLICE);
    8000288c:	06000513          	li	a0,96
    80002890:	00000097          	auipc	ra,0x0
    80002894:	ea0080e7          	jalr	-352(ra) # 80002730 <_ZN3PCBnwEm>
    80002898:	00050493          	mv	s1,a0
    8000289c:	00200713          	li	a4,2
    800028a0:	00098693          	mv	a3,s3
    800028a4:	00000613          	li	a2,0
    800028a8:	00009597          	auipc	a1,0x9
    800028ac:	3e85b583          	ld	a1,1000(a1) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x80>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	d7c080e7          	jalr	-644(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    800028b8:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800028bc:	00048513          	mv	a0,s1
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	dbc080e7          	jalr	-580(ra) # 8000267c <_ZN3PCB5startEv>
}
    800028c8:	02813083          	ld	ra,40(sp)
    800028cc:	02013403          	ld	s0,32(sp)
    800028d0:	01813483          	ld	s1,24(sp)
    800028d4:	01013903          	ld	s2,16(sp)
    800028d8:	00813983          	ld	s3,8(sp)
    800028dc:	00013a03          	ld	s4,0(sp)
    800028e0:	03010113          	addi	sp,sp,48
    800028e4:	00008067          	ret

00000000800028e8 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800028f4:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800028f8:	ffd50513          	addi	a0,a0,-3
}
    800028fc:	00153513          	seqz	a0,a0
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000291c:	00009797          	auipc	a5,0x9
    80002920:	3dc78793          	addi	a5,a5,988 # 8000bcf8 <_ZN3PCB7runningE>
    80002924:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002928:	0007b783          	ld	a5,0(a5)
    8000292c:	00300713          	li	a4,3
    80002930:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002934:	00000097          	auipc	ra,0x0
    80002938:	d70080e7          	jalr	-656(ra) # 800026a4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    8000293c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002940:	00002097          	auipc	ra,0x2
    80002944:	dd0080e7          	jalr	-560(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002948:	00813083          	ld	ra,8(sp)
    8000294c:	00013403          	ld	s0,0(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret

0000000080002958 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00113423          	sd	ra,8(sp)
    80002960:	00813023          	sd	s0,0(sp)
    80002964:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	3a07b423          	sd	zero,936(a5) # 8000bd10 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	d34080e7          	jalr	-716(ra) # 800026a4 <_ZN3PCB8dispatchEv>
}
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00113423          	sd	ra,8(sp)
    80002990:	00813023          	sd	s0,0(sp)
    80002994:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002998:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    8000299c:	00009717          	auipc	a4,0x9
    800029a0:	35c70713          	addi	a4,a4,860 # 8000bcf8 <_ZN3PCB7runningE>
    800029a4:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    800029a8:	00073703          	ld	a4,0(a4)
    800029ac:	00009697          	auipc	a3,0x9
    800029b0:	2b46b683          	ld	a3,692(a3) # 8000bc60 <_GLOBAL_OFFSET_TABLE_+0x50>
    800029b4:	0006b683          	ld	a3,0(a3)
    800029b8:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800029bc:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	eec080e7          	jalr	-276(ra) # 800038ac <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	cdc080e7          	jalr	-804(ra) # 800026a4 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800029d0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029d4:	00002097          	auipc	ra,0x2
    800029d8:	d3c080e7          	jalr	-708(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret

00000000800029ec <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800029ec:	fc010113          	addi	sp,sp,-64
    800029f0:	02113c23          	sd	ra,56(sp)
    800029f4:	02813823          	sd	s0,48(sp)
    800029f8:	02913423          	sd	s1,40(sp)
    800029fc:	03213023          	sd	s2,32(sp)
    80002a00:	01313c23          	sd	s3,24(sp)
    80002a04:	01413823          	sd	s4,16(sp)
    80002a08:	01513423          	sd	s5,8(sp)
    80002a0c:	04010413          	addi	s0,sp,64
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002a10:	00058993          	mv	s3,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002a14:	00060a13          	mv	s4,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002a18:	00068a93          	mv	s5,a3

    void* stack_space = kmalloc(DEFAULT_STACK_SIZE);
    80002a1c:	00001537          	lui	a0,0x1
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	620080e7          	jalr	1568(ra) # 80002040 <_Z7kmallocm>
    80002a28:	00050493          	mv	s1,a0
    if(stack_space == nullptr)
    80002a2c:	06050863          	beqz	a0,80002a9c <_ZN3PCB19threadCreateHandlerEv+0xb0>
    }

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          stack_space,
                          //(void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002a30:	06000513          	li	a0,96
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	cfc080e7          	jalr	-772(ra) # 80002730 <_ZN3PCBnwEm>
    80002a3c:	00050913          	mv	s2,a0
    80002a40:	00200713          	li	a4,2
    80002a44:	00048693          	mv	a3,s1
    80002a48:	000a8613          	mv	a2,s5
    80002a4c:	000a0593          	mv	a1,s4
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	bdc080e7          	jalr	-1060(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a58:	0129b023          	sd	s2,0(s3)

    if (newPCB == 0) {
    80002a5c:	04090e63          	beqz	s2,80002ab8 <_ZN3PCB19threadCreateHandlerEv+0xcc>
        kfree(stack_space);
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002a60:	00090513          	mv	a0,s2
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	c18080e7          	jalr	-1000(ra) # 8000267c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002a6c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002a70:	00002097          	auipc	ra,0x2
    80002a74:	ca0080e7          	jalr	-864(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a78:	03813083          	ld	ra,56(sp)
    80002a7c:	03013403          	ld	s0,48(sp)
    80002a80:	02813483          	ld	s1,40(sp)
    80002a84:	02013903          	ld	s2,32(sp)
    80002a88:	01813983          	ld	s3,24(sp)
    80002a8c:	01013a03          	ld	s4,16(sp)
    80002a90:	00813a83          	ld	s5,8(sp)
    80002a94:	04010113          	addi	sp,sp,64
    80002a98:	00008067          	ret
        (*threadHandle) = nullptr;
    80002a9c:	0009b023          	sd	zero,0(s3)
        kfree(stack_space);
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	6a4080e7          	jalr	1700(ra) # 80002144 <_Z5kfreePKv>
        __asm__ volatile("li a0, 0x01");
    80002aa8:	00100513          	li	a0,1
        Riscv::w_a0_sscratch();
    80002aac:	00002097          	auipc	ra,0x2
    80002ab0:	c64080e7          	jalr	-924(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
        return;
    80002ab4:	fc5ff06f          	j	80002a78 <_ZN3PCB19threadCreateHandlerEv+0x8c>
        kfree(stack_space);
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	688080e7          	jalr	1672(ra) # 80002144 <_Z5kfreePKv>
        __asm__ volatile("li a0, 0x01");
    80002ac4:	00100513          	li	a0,1
    80002ac8:	fa9ff06f          	j	80002a70 <_ZN3PCB19threadCreateHandlerEv+0x84>

0000000080002acc <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002adc:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002ae0:	02050463          	beqz	a0,80002b08 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	b98080e7          	jalr	-1128(ra) # 8000267c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002aec:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002af0:	00002097          	auipc	ra,0x2
    80002af4:	c20080e7          	jalr	-992(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002af8:	00813083          	ld	ra,8(sp)
    80002afc:	00013403          	ld	s0,0(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002b08:	00100513          	li	a0,1
    80002b0c:	fe5ff06f          	j	80002af0 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002b10 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002b10:	fc010113          	addi	sp,sp,-64
    80002b14:	02113c23          	sd	ra,56(sp)
    80002b18:	02813823          	sd	s0,48(sp)
    80002b1c:	02913423          	sd	s1,40(sp)
    80002b20:	03213023          	sd	s2,32(sp)
    80002b24:	01313c23          	sd	s3,24(sp)
    80002b28:	01413823          	sd	s4,16(sp)
    80002b2c:	01513423          	sd	s5,8(sp)
    80002b30:	04010413          	addi	s0,sp,64
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002b34:	00058993          	mv	s3,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002b38:	00060a13          	mv	s4,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002b3c:	00068a93          	mv	s5,a3

    void* stack_space = kmalloc(DEFAULT_STACK_SIZE);
    80002b40:	00001537          	lui	a0,0x1
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	4fc080e7          	jalr	1276(ra) # 80002040 <_Z7kmallocm>
    80002b4c:	00050493          	mv	s1,a0
    if(stack_space == nullptr)
    80002b50:	06050263          	beqz	a0,80002bb4 <_ZN3PCB20threadMakePCBHandlerEv+0xa4>
    }

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          stack_space,
                          //(void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002b54:	06000513          	li	a0,96
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	bd8080e7          	jalr	-1064(ra) # 80002730 <_ZN3PCBnwEm>
    80002b60:	00050913          	mv	s2,a0
    80002b64:	00200713          	li	a4,2
    80002b68:	00048693          	mv	a3,s1
    80002b6c:	000a8613          	mv	a2,s5
    80002b70:	000a0593          	mv	a1,s4
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	ab8080e7          	jalr	-1352(ra) # 8000262c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002b7c:	0129b023          	sd	s2,0(s3)

    if (newPCB == nullptr)
    80002b80:	04090863          	beqz	s2,80002bd0 <_ZN3PCB20threadMakePCBHandlerEv+0xc0>
    {
        kfree(stack_space);
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002b84:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	b88080e7          	jalr	-1144(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b90:	03813083          	ld	ra,56(sp)
    80002b94:	03013403          	ld	s0,48(sp)
    80002b98:	02813483          	ld	s1,40(sp)
    80002b9c:	02013903          	ld	s2,32(sp)
    80002ba0:	01813983          	ld	s3,24(sp)
    80002ba4:	01013a03          	ld	s4,16(sp)
    80002ba8:	00813a83          	ld	s5,8(sp)
    80002bac:	04010113          	addi	sp,sp,64
    80002bb0:	00008067          	ret
        (*threadHandle) = nullptr;
    80002bb4:	0009b023          	sd	zero,0(s3)
        kfree(stack_space);
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	58c080e7          	jalr	1420(ra) # 80002144 <_Z5kfreePKv>
        __asm__ volatile("li a0, 0x01");
    80002bc0:	00100513          	li	a0,1
        Riscv::w_a0_sscratch();
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	b4c080e7          	jalr	-1204(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
        return;
    80002bcc:	fc5ff06f          	j	80002b90 <_ZN3PCB20threadMakePCBHandlerEv+0x80>
        kfree(stack_space);
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	570080e7          	jalr	1392(ra) # 80002144 <_Z5kfreePKv>
        __asm__ volatile("li a0, 0x01");
    80002bdc:	00100513          	li	a0,1
    80002be0:	fa9ff06f          	j	80002b88 <_ZN3PCB20threadMakePCBHandlerEv+0x78>

0000000080002be4 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002be4:	fe010113          	addi	sp,sp,-32
    80002be8:	00113c23          	sd	ra,24(sp)
    80002bec:	00813823          	sd	s0,16(sp)
    80002bf0:	00913423          	sd	s1,8(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002bf8:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002bfc:	02048e63          	beqz	s1,80002c38 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	b98080e7          	jalr	-1128(ra) # 8000279c <_ZN3PCBD1Ev>
    80002c0c:	00048513          	mv	a0,s1
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	b54080e7          	jalr	-1196(ra) # 80002764 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002c18:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002c1c:	00002097          	auipc	ra,0x2
    80002c20:	af4080e7          	jalr	-1292(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c24:	01813083          	ld	ra,24(sp)
    80002c28:	01013403          	ld	s0,16(sp)
    80002c2c:	00813483          	ld	s1,8(sp)
    80002c30:	02010113          	addi	sp,sp,32
    80002c34:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002c38:	00100513          	li	a0,1
    80002c3c:	fe1ff06f          	j	80002c1c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002c40 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00813423          	sd	s0,8(sp)
    80002c48:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002c4c:	fffff7b7          	lui	a5,0xfffff
    80002c50:	00f57533          	and	a0,a0,a5
    80002c54:	00813403          	ld	s0,8(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002c60:	ff010113          	addi	sp,sp,-16
    80002c64:	00113423          	sd	ra,8(sp)
    80002c68:	00813023          	sd	s0,0(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	fd0080e7          	jalr	-48(ra) # 80002c40 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002c78:	000017b7          	lui	a5,0x1
    80002c7c:	00f50533          	add	a0,a0,a5
    80002c80:	00813083          	ld	ra,8(sp)
    80002c84:	00013403          	ld	s0,0(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret

0000000080002c90 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002c90:	ff010113          	addi	sp,sp,-16
    80002c94:	00813423          	sd	s0,8(sp)
    80002c98:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002c9c:	00000713          	li	a4,0
    size_t x = 1;
    80002ca0:	00100793          	li	a5,1
    while(x <= num)
    80002ca4:	00f56863          	bltu	a0,a5,80002cb4 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002ca8:	00170713          	addi	a4,a4,1
        x<<=1;
    80002cac:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002cb0:	ff5ff06f          	j	80002ca4 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002cb4:	fff70513          	addi	a0,a4,-1
    80002cb8:	00813403          	ld	s0,8(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret

0000000080002cc4 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    80002cd0:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002cd4:	00000513          	li	a0,0
    size_t x = 1;
    80002cd8:	00100793          	li	a5,1
    while(x < num)
    80002cdc:	00e7f863          	bgeu	a5,a4,80002cec <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002ce0:	00150513          	addi	a0,a0,1 # 1001 <_entry-0x7fffefff>
        x<<=1;
    80002ce4:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002ce8:	ff5ff06f          	j	80002cdc <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret

0000000080002cf8 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813423          	sd	s0,8(sp)
    80002d00:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002d04:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002d08:	00260793          	addi	a5,a2,2
    80002d0c:	00479793          	slli	a5,a5,0x4
    80002d10:	00f507b3          	add	a5,a0,a5
    80002d14:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002d18:	02078463          	beqz	a5,80002d40 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002d1c:	00260613          	addi	a2,a2,2
    80002d20:	00461613          	slli	a2,a2,0x4
    80002d24:	00c50633          	add	a2,a0,a2
    80002d28:	00863783          	ld	a5,8(a2)
    80002d2c:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002d30:	00b63423          	sd	a1,8(a2)
    }
}
    80002d34:	00813403          	ld	s0,8(sp)
    80002d38:	01010113          	addi	sp,sp,16
    80002d3c:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002d40:	00260613          	addi	a2,a2,2
    80002d44:	00461613          	slli	a2,a2,0x4
    80002d48:	00c50633          	add	a2,a0,a2
    80002d4c:	00b63423          	sd	a1,8(a2)
    80002d50:	00b63023          	sd	a1,0(a2)
    80002d54:	fe1ff06f          	j	80002d34 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002d58 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002d64:	000017b7          	lui	a5,0x1
    80002d68:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002d6c:	00853783          	ld	a5,8(a0)
    80002d70:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002d74:	00f677b3          	and	a5,a2,a5
    80002d78:	00078a63          	beqz	a5,80002d8c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002d7c:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002d80:	00813403          	ld	s0,8(sp)
    80002d84:	01010113          	addi	sp,sp,16
    80002d88:	00008067          	ret
        return (size_t)addr + diff;
    80002d8c:	00c58533          	add	a0,a1,a2
    80002d90:	ff1ff06f          	j	80002d80 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002d94 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002d94:	fd010113          	addi	sp,sp,-48
    80002d98:	02113423          	sd	ra,40(sp)
    80002d9c:	02813023          	sd	s0,32(sp)
    80002da0:	00913c23          	sd	s1,24(sp)
    80002da4:	01213823          	sd	s2,16(sp)
    80002da8:	01313423          	sd	s3,8(sp)
    80002dac:	01413023          	sd	s4,0(sp)
    80002db0:	03010413          	addi	s0,sp,48
    80002db4:	00050913          	mv	s2,a0
    80002db8:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002dbc:	06070a63          	beqz	a4,80002e30 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002dc0:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002dc4:	04c68663          	beq	a3,a2,80002e10 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002dc8:	fff68493          	addi	s1,a3,-1
    80002dcc:	00048613          	mv	a2,s1
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	f88080e7          	jalr	-120(ra) # 80002d58 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002dd8:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002ddc:	00000713          	li	a4,0
    80002de0:	00048693          	mv	a3,s1
    80002de4:	00098613          	mv	a2,s3
    80002de8:	00090513          	mv	a0,s2
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	fa8080e7          	jalr	-88(ra) # 80002d94 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002df4:	00100713          	li	a4,1
    80002df8:	00048693          	mv	a3,s1
    80002dfc:	00098613          	mv	a2,s3
    80002e00:	000a0593          	mv	a1,s4
    80002e04:	00090513          	mv	a0,s2
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	f8c080e7          	jalr	-116(ra) # 80002d94 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002e10:	02813083          	ld	ra,40(sp)
    80002e14:	02013403          	ld	s0,32(sp)
    80002e18:	01813483          	ld	s1,24(sp)
    80002e1c:	01013903          	ld	s2,16(sp)
    80002e20:	00813983          	ld	s3,8(sp)
    80002e24:	00013a03          	ld	s4,0(sp)
    80002e28:	03010113          	addi	sp,sp,48
    80002e2c:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002e30:	00068613          	mv	a2,a3
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	ec4080e7          	jalr	-316(ra) # 80002cf8 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002e3c:	fd5ff06f          	j	80002e10 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002e40 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002e40:	fd010113          	addi	sp,sp,-48
    80002e44:	02113423          	sd	ra,40(sp)
    80002e48:	02813023          	sd	s0,32(sp)
    80002e4c:	00913c23          	sd	s1,24(sp)
    80002e50:	01213823          	sd	s2,16(sp)
    80002e54:	01313423          	sd	s3,8(sp)
    80002e58:	03010413          	addi	s0,sp,48
    80002e5c:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e60:	00058513          	mv	a0,a1
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	e60080e7          	jalr	-416(ra) # 80002cc4 <_Z11getDeg2Ceilm>
    80002e6c:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002e70:	00050693          	mv	a3,a0
    80002e74:	0184b783          	ld	a5,24(s1)
    80002e78:	06d7ee63          	bltu	a5,a3,80002ef4 <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002e7c:	00268793          	addi	a5,a3,2
    80002e80:	00479793          	slli	a5,a5,0x4
    80002e84:	00f487b3          	add	a5,s1,a5
    80002e88:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002e8c:	00091663          	bnez	s2,80002e98 <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002e90:	00168693          	addi	a3,a3,1
    80002e94:	fe1ff06f          	j	80002e74 <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002e98:	00093703          	ld	a4,0(s2)
    80002e9c:	00268793          	addi	a5,a3,2
    80002ea0:	00479793          	slli	a5,a5,0x4
    80002ea4:	00f487b3          	add	a5,s1,a5
    80002ea8:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002eac:	02070a63          	beqz	a4,80002ee0 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002eb0:	00100713          	li	a4,1
    80002eb4:	00098613          	mv	a2,s3
    80002eb8:	00090593          	mv	a1,s2
    80002ebc:	00048513          	mv	a0,s1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	ed4080e7          	jalr	-300(ra) # 80002d94 <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002ec8:	00100513          	li	a0,1
    80002ecc:	0135153b          	sllw	a0,a0,s3
    80002ed0:	0104b983          	ld	s3,16(s1)
    80002ed4:	40a989b3          	sub	s3,s3,a0
    80002ed8:	0134b823          	sd	s3,16(s1)
            return ret;
    80002edc:	01c0006f          	j	80002ef8 <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002ee0:	00268793          	addi	a5,a3,2
    80002ee4:	00479793          	slli	a5,a5,0x4
    80002ee8:	00f487b3          	add	a5,s1,a5
    80002eec:	0007b423          	sd	zero,8(a5)
    80002ef0:	fc1ff06f          	j	80002eb0 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002ef4:	00000913          	li	s2,0
}
    80002ef8:	00090513          	mv	a0,s2
    80002efc:	02813083          	ld	ra,40(sp)
    80002f00:	02013403          	ld	s0,32(sp)
    80002f04:	01813483          	ld	s1,24(sp)
    80002f08:	01013903          	ld	s2,16(sp)
    80002f0c:	00813983          	ld	s3,8(sp)
    80002f10:	03010113          	addi	sp,sp,48
    80002f14:	00008067          	ret

0000000080002f18 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002f18:	fd010113          	addi	sp,sp,-48
    80002f1c:	02113423          	sd	ra,40(sp)
    80002f20:	02813023          	sd	s0,32(sp)
    80002f24:	00913c23          	sd	s1,24(sp)
    80002f28:	01213823          	sd	s2,16(sp)
    80002f2c:	01313423          	sd	s3,8(sp)
    80002f30:	03010413          	addi	s0,sp,48
    80002f34:	00050493          	mv	s1,a0
    80002f38:	00058993          	mv	s3,a1
    80002f3c:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002f40:	01853783          	ld	a5,24(a0)
    80002f44:	02c78a63          	beq	a5,a2,80002f78 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	e10080e7          	jalr	-496(ra) # 80002d58 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002f50:	00290793          	addi	a5,s2,2
    80002f54:	00479793          	slli	a5,a5,0x4
    80002f58:	00f487b3          	add	a5,s1,a5
    80002f5c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002f60:	00000713          	li	a4,0
    while(curr != nullptr)
    80002f64:	0a078e63          	beqz	a5,80003020 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002f68:	00a78e63          	beq	a5,a0,80002f84 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002f6c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002f70:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002f74:	ff1ff06f          	j	80002f64 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	d80080e7          	jalr	-640(ra) # 80002cf8 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002f80:	0b40006f          	j	80003034 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002f84:	04070863          	beqz	a4,80002fd4 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002f88:	0007b683          	ld	a3,0(a5)
    80002f8c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002f90:	00290693          	addi	a3,s2,2
    80002f94:	00469693          	slli	a3,a3,0x4
    80002f98:	00d486b3          	add	a3,s1,a3
    80002f9c:	0086b683          	ld	a3,8(a3)
    80002fa0:	02f68063          	beq	a3,a5,80002fc0 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002fa4:	06a9f263          	bgeu	s3,a0,80003008 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002fa8:	00190613          	addi	a2,s2,1
    80002fac:	00098593          	mv	a1,s3
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	f64080e7          	jalr	-156(ra) # 80002f18 <_Z9addBlocksP14buddyAllocatorPvm>
    80002fbc:	0780006f          	j	80003034 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002fc0:	00290793          	addi	a5,s2,2
    80002fc4:	00479793          	slli	a5,a5,0x4
    80002fc8:	00f487b3          	add	a5,s1,a5
    80002fcc:	00e7b423          	sd	a4,8(a5)
    80002fd0:	fd5ff06f          	j	80002fa4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002fd4:	0007b703          	ld	a4,0(a5)
    80002fd8:	00070c63          	beqz	a4,80002ff0 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002fdc:	00290793          	addi	a5,s2,2
    80002fe0:	00479793          	slli	a5,a5,0x4
    80002fe4:	00f487b3          	add	a5,s1,a5
    80002fe8:	00e7b023          	sd	a4,0(a5)
    80002fec:	fb9ff06f          	j	80002fa4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002ff0:	00290793          	addi	a5,s2,2
    80002ff4:	00479793          	slli	a5,a5,0x4
    80002ff8:	00f487b3          	add	a5,s1,a5
    80002ffc:	0007b423          	sd	zero,8(a5)
    80003000:	0007b023          	sd	zero,0(a5)
    80003004:	fa1ff06f          	j	80002fa4 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80003008:	00190613          	addi	a2,s2,1
    8000300c:	00050593          	mv	a1,a0
    80003010:	00048513          	mv	a0,s1
    80003014:	00000097          	auipc	ra,0x0
    80003018:	f04080e7          	jalr	-252(ra) # 80002f18 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    8000301c:	0180006f          	j	80003034 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80003020:	00090613          	mv	a2,s2
    80003024:	00098593          	mv	a1,s3
    80003028:	00048513          	mv	a0,s1
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	ccc080e7          	jalr	-820(ra) # 80002cf8 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80003034:	02813083          	ld	ra,40(sp)
    80003038:	02013403          	ld	s0,32(sp)
    8000303c:	01813483          	ld	s1,24(sp)
    80003040:	01013903          	ld	s2,16(sp)
    80003044:	00813983          	ld	s3,8(sp)
    80003048:	03010113          	addi	sp,sp,48
    8000304c:	00008067          	ret

0000000080003050 <_Z10buddy_initPvm>:
{
    80003050:	fd010113          	addi	sp,sp,-48
    80003054:	02113423          	sd	ra,40(sp)
    80003058:	02813023          	sd	s0,32(sp)
    8000305c:	00913c23          	sd	s1,24(sp)
    80003060:	01213823          	sd	s2,16(sp)
    80003064:	01313423          	sd	s3,8(sp)
    80003068:	03010413          	addi	s0,sp,48
    8000306c:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80003070:	00050493          	mv	s1,a0
    80003074:	00000097          	auipc	ra,0x0
    80003078:	bcc080e7          	jalr	-1076(ra) # 80002c40 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    8000307c:	00a48a63          	beq	s1,a0,80003090 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80003080:	00000097          	auipc	ra,0x0
    80003084:	be0080e7          	jalr	-1056(ra) # 80002c60 <_Z16getNextBlockAddrm>
    80003088:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    8000308c:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80003090:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80003094:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80003098:	00048513          	mv	a0,s1
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	bc4080e7          	jalr	-1084(ra) # 80002c60 <_Z16getNextBlockAddrm>
    800030a4:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    800030a8:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    800030ac:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800030b0:	00098513          	mv	a0,s3
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	bdc080e7          	jalr	-1060(ra) # 80002c90 <_Z12getDeg2Floorm>
    800030bc:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030c0:	00000713          	li	a4,0
    800030c4:	02e56063          	bltu	a0,a4,800030e4 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    800030c8:	00270793          	addi	a5,a4,2
    800030cc:	00479793          	slli	a5,a5,0x4
    800030d0:	00f907b3          	add	a5,s2,a5
    800030d4:	0007b423          	sd	zero,8(a5)
    800030d8:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    800030dc:	00170713          	addi	a4,a4,1
    800030e0:	fe5ff06f          	j	800030c4 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    800030e4:	00000493          	li	s1,0
    800030e8:	0334f463          	bgeu	s1,s3,80003110 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    800030ec:	00893583          	ld	a1,8(s2)
    800030f0:	00c49793          	slli	a5,s1,0xc
    800030f4:	00000613          	li	a2,0
    800030f8:	00f585b3          	add	a1,a1,a5
    800030fc:	00090513          	mv	a0,s2
    80003100:	00000097          	auipc	ra,0x0
    80003104:	e18080e7          	jalr	-488(ra) # 80002f18 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003108:	00148493          	addi	s1,s1,1
    8000310c:	fddff06f          	j	800030e8 <_Z10buddy_initPvm+0x98>
}
    80003110:	00090513          	mv	a0,s2
    80003114:	02813083          	ld	ra,40(sp)
    80003118:	02013403          	ld	s0,32(sp)
    8000311c:	01813483          	ld	s1,24(sp)
    80003120:	01013903          	ld	s2,16(sp)
    80003124:	00813983          	ld	s3,8(sp)
    80003128:	03010113          	addi	sp,sp,48
    8000312c:	00008067          	ret

0000000080003130 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80003130:	fd010113          	addi	sp,sp,-48
    80003134:	02113423          	sd	ra,40(sp)
    80003138:	02813023          	sd	s0,32(sp)
    8000313c:	00913c23          	sd	s1,24(sp)
    80003140:	01213823          	sd	s2,16(sp)
    80003144:	01313423          	sd	s3,8(sp)
    80003148:	03010413          	addi	s0,sp,48
    8000314c:	00050493          	mv	s1,a0
    80003150:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80003154:	00060513          	mv	a0,a2
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	b6c080e7          	jalr	-1172(ra) # 80002cc4 <_Z11getDeg2Ceilm>
    80003160:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003164:	00050613          	mv	a2,a0
    80003168:	00098593          	mv	a1,s3
    8000316c:	00048513          	mv	a0,s1
    80003170:	00000097          	auipc	ra,0x0
    80003174:	da8080e7          	jalr	-600(ra) # 80002f18 <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80003178:	00100513          	li	a0,1
    8000317c:	0125153b          	sllw	a0,a0,s2
    80003180:	0104b903          	ld	s2,16(s1)
    80003184:	00a90933          	add	s2,s2,a0
    80003188:	0124b823          	sd	s2,16(s1)
}
    8000318c:	02813083          	ld	ra,40(sp)
    80003190:	02013403          	ld	s0,32(sp)
    80003194:	01813483          	ld	s1,24(sp)
    80003198:	01013903          	ld	s2,16(sp)
    8000319c:	00813983          	ld	s3,8(sp)
    800031a0:	03010113          	addi	sp,sp,48
    800031a4:	00008067          	ret

00000000800031a8 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800031a8:	fd010113          	addi	sp,sp,-48
    800031ac:	02113423          	sd	ra,40(sp)
    800031b0:	02813023          	sd	s0,32(sp)
    800031b4:	00913c23          	sd	s1,24(sp)
    800031b8:	01213823          	sd	s2,16(sp)
    800031bc:	01313423          	sd	s3,8(sp)
    800031c0:	03010413          	addi	s0,sp,48
    800031c4:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	0b050513          	addi	a0,a0,176 # 80009278 <CONSOLE_STATUS+0x268>
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	5a0080e7          	jalr	1440(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    800031d8:	01000613          	li	a2,16
    800031dc:	0089b583          	ld	a1,8(s3)
    800031e0:	00006517          	auipc	a0,0x6
    800031e4:	0d050513          	addi	a0,a0,208 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	660080e7          	jalr	1632(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    800031f0:	00a00613          	li	a2,10
    800031f4:	0009b583          	ld	a1,0(s3)
    800031f8:	00006517          	auipc	a0,0x6
    800031fc:	0d050513          	addi	a0,a0,208 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003200:	00000097          	auipc	ra,0x0
    80003204:	648080e7          	jalr	1608(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003208:	00a00613          	li	a2,10
    8000320c:	0109b583          	ld	a1,16(s3)
    80003210:	00006517          	auipc	a0,0x6
    80003214:	0d050513          	addi	a0,a0,208 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	630080e7          	jalr	1584(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003220:	0189a903          	lw	s2,24(s3)
    80003224:	0080006f          	j	8000322c <_Z14printBuddyInfoP14buddyAllocator+0x84>
    80003228:	fff9091b          	addiw	s2,s2,-1
    8000322c:	06094663          	bltz	s2,80003298 <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003230:	00a00613          	li	a2,10
    80003234:	00090593          	mv	a1,s2
    80003238:	00006517          	auipc	a0,0x6
    8000323c:	0c850513          	addi	a0,a0,200 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003240:	00000097          	auipc	ra,0x0
    80003244:	608080e7          	jalr	1544(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	0c050513          	addi	a0,a0,192 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003250:	00000097          	auipc	ra,0x0
    80003254:	520080e7          	jalr	1312(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80003258:	00290793          	addi	a5,s2,2
    8000325c:	00479793          	slli	a5,a5,0x4
    80003260:	00f987b3          	add	a5,s3,a5
    80003264:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80003268:	fc0480e3          	beqz	s1,80003228 <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    8000326c:	00000613          	li	a2,0
    80003270:	01000593          	li	a1,16
    80003274:	00048513          	mv	a0,s1
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	53c080e7          	jalr	1340(ra) # 800037b4 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80003280:	00006517          	auipc	a0,0x6
    80003284:	f0050513          	addi	a0,a0,-256 # 80009180 <CONSOLE_STATUS+0x170>
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	4e8080e7          	jalr	1256(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80003290:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80003294:	fd5ff06f          	j	80003268 <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	09050513          	addi	a0,a0,144 # 80009328 <CONSOLE_STATUS+0x318>
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	4d0080e7          	jalr	1232(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    800032a8:	02813083          	ld	ra,40(sp)
    800032ac:	02013403          	ld	s0,32(sp)
    800032b0:	01813483          	ld	s1,24(sp)
    800032b4:	01013903          	ld	s2,16(sp)
    800032b8:	00813983          	ld	s3,8(sp)
    800032bc:	03010113          	addi	sp,sp,48
    800032c0:	00008067          	ret

00000000800032c4 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    800032dc:	01800513          	li	a0,24
    800032e0:	00002097          	auipc	ra,0x2
    800032e4:	380080e7          	jalr	896(ra) # 80005660 <_ZN10KSemaphorenwEm>
    800032e8:	00050493          	mv	s1,a0
    800032ec:	00000593          	li	a1,0
    800032f0:	00002097          	auipc	ra,0x2
    800032f4:	10c080e7          	jalr	268(ra) # 800053fc <_ZN10KSemaphoreC1Ei>
    800032f8:	00009797          	auipc	a5,0x9
    800032fc:	a297b423          	sd	s1,-1496(a5) # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003300:	01800513          	li	a0,24
    80003304:	00002097          	auipc	ra,0x2
    80003308:	35c080e7          	jalr	860(ra) # 80005660 <_ZN10KSemaphorenwEm>
    8000330c:	00050493          	mv	s1,a0
    80003310:	00000593          	li	a1,0
    80003314:	00002097          	auipc	ra,0x2
    80003318:	0e8080e7          	jalr	232(ra) # 800053fc <_ZN10KSemaphoreC1Ei>
    8000331c:	00009797          	auipc	a5,0x9
    80003320:	a097b623          	sd	s1,-1524(a5) # 8000bd28 <_ZN8KConsole19hasCharactersOutputE>
}
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	00013903          	ld	s2,0(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret
    8000333c:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003340:	00048513          	mv	a0,s1
    80003344:	00002097          	auipc	ra,0x2
    80003348:	3c8080e7          	jalr	968(ra) # 8000570c <_ZN10KSemaphoredlEPv>
    8000334c:	00090513          	mv	a0,s2
    80003350:	00012097          	auipc	ra,0x12
    80003354:	b38080e7          	jalr	-1224(ra) # 80014e88 <_Unwind_Resume>
    80003358:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    8000335c:	00048513          	mv	a0,s1
    80003360:	00002097          	auipc	ra,0x2
    80003364:	3ac080e7          	jalr	940(ra) # 8000570c <_ZN10KSemaphoredlEPv>
    80003368:	00090513          	mv	a0,s2
    8000336c:	00012097          	auipc	ra,0x12
    80003370:	b1c080e7          	jalr	-1252(ra) # 80014e88 <_Unwind_Resume>

0000000080003374 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003374:	00009697          	auipc	a3,0x9
    80003378:	9ac68693          	addi	a3,a3,-1620 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    8000337c:	0106b603          	ld	a2,16(a3)
    80003380:	00160793          	addi	a5,a2,1
    80003384:	00004737          	lui	a4,0x4
    80003388:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000338c:	00e7f7b3          	and	a5,a5,a4
    80003390:	0186b703          	ld	a4,24(a3)
    80003394:	04e78263          	beq	a5,a4,800033d8 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00113423          	sd	ra,8(sp)
    800033a0:	00813023          	sd	s0,0(sp)
    800033a4:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800033a8:	0000d717          	auipc	a4,0xd
    800033ac:	9b870713          	addi	a4,a4,-1608 # 8000fd60 <_ZN8KConsole11inputBufferE>
    800033b0:	00c70633          	add	a2,a4,a2
    800033b4:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800033b8:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800033bc:	0006b503          	ld	a0,0(a3)
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	258080e7          	jalr	600(ra) # 80005618 <_ZN10KSemaphore6signalEv>
}
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
    800033d8:	00008067          	ret

00000000800033dc <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033dc:	00009797          	auipc	a5,0x9
    800033e0:	8447b783          	ld	a5,-1980(a5) # 8000bc20 <_GLOBAL_OFFSET_TABLE_+0x10>
    800033e4:	0007b783          	ld	a5,0(a5)
    800033e8:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800033ec:	0017f793          	andi	a5,a5,1
    800033f0:	02078063          	beqz	a5,80003410 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800033f4:	00009797          	auipc	a5,0x9
    800033f8:	8547b783          	ld	a5,-1964(a5) # 8000bc48 <_GLOBAL_OFFSET_TABLE_+0x38>
    800033fc:	0007b783          	ld	a5,0(a5)
    80003400:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003404:	00009797          	auipc	a5,0x9
    80003408:	93c7b783          	ld	a5,-1732(a5) # 8000bd40 <_ZN8KConsole11pendingGetcE>
    8000340c:	00079463          	bnez	a5,80003414 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003410:	00008067          	ret
{
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00113423          	sd	ra,8(sp)
    8000341c:	00813023          	sd	s0,0(sp)
    80003420:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003424:	fff78793          	addi	a5,a5,-1
    80003428:	00009717          	auipc	a4,0x9
    8000342c:	90f73c23          	sd	a5,-1768(a4) # 8000bd40 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003430:	00000097          	auipc	ra,0x0
    80003434:	f44080e7          	jalr	-188(ra) # 80003374 <_ZN8KConsole17putCharacterInputEc>
}
    80003438:	00813083          	ld	ra,8(sp)
    8000343c:	00013403          	ld	s0,0(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003448:	fe010113          	addi	sp,sp,-32
    8000344c:	00113c23          	sd	ra,24(sp)
    80003450:	00813823          	sd	s0,16(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    8000345c:	00009497          	auipc	s1,0x9
    80003460:	8c448493          	addi	s1,s1,-1852 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    80003464:	0004b503          	ld	a0,0(s1)
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	038080e7          	jalr	56(ra) # 800054a0 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003470:	0184b783          	ld	a5,24(s1)
    80003474:	0104b703          	ld	a4,16(s1)
    80003478:	04e78063          	beq	a5,a4,800034b8 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    8000347c:	0000d717          	auipc	a4,0xd
    80003480:	8e470713          	addi	a4,a4,-1820 # 8000fd60 <_ZN8KConsole11inputBufferE>
    80003484:	00f70733          	add	a4,a4,a5
    80003488:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    8000348c:	00178793          	addi	a5,a5,1
    80003490:	00004737          	lui	a4,0x4
    80003494:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003498:	00e7f7b3          	and	a5,a5,a4
    8000349c:	00009717          	auipc	a4,0x9
    800034a0:	88f73e23          	sd	a5,-1892(a4) # 8000bd38 <_ZN8KConsole9inputHeadE>
    return c;
}
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	02010113          	addi	sp,sp,32
    800034b4:	00008067          	ret
        return -1;
    800034b8:	0ff00513          	li	a0,255
    800034bc:	fe9ff06f          	j	800034a4 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800034c0 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800034c0:	00009697          	auipc	a3,0x9
    800034c4:	86068693          	addi	a3,a3,-1952 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    800034c8:	0286b603          	ld	a2,40(a3)
    800034cc:	00160793          	addi	a5,a2,1
    800034d0:	00004737          	lui	a4,0x4
    800034d4:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800034d8:	00e7f7b3          	and	a5,a5,a4
    800034dc:	0306b703          	ld	a4,48(a3)
    800034e0:	04e78a63          	beq	a5,a4,80003534 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	00813023          	sd	s0,0(sp)
    800034f0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800034f4:	00068713          	mv	a4,a3
    800034f8:	0386b683          	ld	a3,56(a3)
    800034fc:	00168693          	addi	a3,a3,1
    80003500:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003504:	00009697          	auipc	a3,0x9
    80003508:	85c68693          	addi	a3,a3,-1956 # 8000bd60 <_ZN8KConsole12outputBufferE>
    8000350c:	00c68633          	add	a2,a3,a2
    80003510:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003514:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003518:	00873503          	ld	a0,8(a4)
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	0fc080e7          	jalr	252(ra) # 80005618 <_ZN10KSemaphore6signalEv>
}
    80003524:	00813083          	ld	ra,8(sp)
    80003528:	00013403          	ld	s0,0(sp)
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret
    80003534:	00008067          	ret

0000000080003538 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000354c:	00008497          	auipc	s1,0x8
    80003550:	7d448493          	addi	s1,s1,2004 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    80003554:	0084b503          	ld	a0,8(s1)
    80003558:	00002097          	auipc	ra,0x2
    8000355c:	f48080e7          	jalr	-184(ra) # 800054a0 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003560:	0304b783          	ld	a5,48(s1)
    80003564:	0284b703          	ld	a4,40(s1)
    80003568:	04e78063          	beq	a5,a4,800035a8 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    8000356c:	00008717          	auipc	a4,0x8
    80003570:	7f470713          	addi	a4,a4,2036 # 8000bd60 <_ZN8KConsole12outputBufferE>
    80003574:	00f70733          	add	a4,a4,a5
    80003578:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    8000357c:	00178793          	addi	a5,a5,1
    80003580:	00004737          	lui	a4,0x4
    80003584:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003588:	00e7f7b3          	and	a5,a5,a4
    8000358c:	00008717          	auipc	a4,0x8
    80003590:	7cf73223          	sd	a5,1988(a4) # 8000bd50 <_ZN8KConsole10outputHeadE>
    return c;
}
    80003594:	01813083          	ld	ra,24(sp)
    80003598:	01013403          	ld	s0,16(sp)
    8000359c:	00813483          	ld	s1,8(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00008067          	ret
        return -1;
    800035a8:	0ff00513          	li	a0,255
    800035ac:	fe9ff06f          	j	80003594 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800035b0 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00113423          	sd	ra,8(sp)
    800035b8:	00813023          	sd	s0,0(sp)
    800035bc:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800035c0:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800035c4:	0ff57513          	andi	a0,a0,255
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	ef8080e7          	jalr	-264(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
}
    800035d0:	00813083          	ld	ra,8(sp)
    800035d4:	00013403          	ld	s0,0(sp)
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret

00000000800035e0 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	00813823          	sd	s0,16(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800035f4:	00008717          	auipc	a4,0x8
    800035f8:	72c70713          	addi	a4,a4,1836 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    800035fc:	02073783          	ld	a5,32(a4)
    80003600:	00178793          	addi	a5,a5,1
    80003604:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	e40080e7          	jalr	-448(ra) # 80003448 <_ZN8KConsole17getCharacterInputEv>
    80003610:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003614:	01b00793          	li	a5,27
    80003618:	02f51663          	bne	a0,a5,80003644 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    8000361c:	00d00793          	li	a5,13
    80003620:	02f48863          	beq	s1,a5,80003650 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003624:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003628:	00001097          	auipc	ra,0x1
    8000362c:	0e8080e7          	jalr	232(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	02010113          	addi	sp,sp,32
    80003640:	00008067          	ret
        putCharacterOutput(ch);
    80003644:	00000097          	auipc	ra,0x0
    80003648:	e7c080e7          	jalr	-388(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
    8000364c:	fd1ff06f          	j	8000361c <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003650:	00d00513          	li	a0,13
    80003654:	00000097          	auipc	ra,0x0
    80003658:	e6c080e7          	jalr	-404(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    8000365c:	00a00513          	li	a0,10
    80003660:	00000097          	auipc	ra,0x0
    80003664:	e60080e7          	jalr	-416(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
    80003668:	fbdff06f          	j	80003624 <_ZN8KConsole11getcHandlerEv+0x44>

000000008000366c <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00813423          	sd	s0,8(sp)
    80003674:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003678:	00008517          	auipc	a0,0x8
    8000367c:	6e053503          	ld	a0,1760(a0) # 8000bd58 <_ZN8KConsole11pendingPutcE>
    80003680:	00153513          	seqz	a0,a0
    80003684:	00813403          	ld	s0,8(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret

0000000080003690 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	0180006f          	j	800036b8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	d00080e7          	jalr	-768(ra) # 800023a4 <_Z11thread_exitv>
    800036ac:	0340006f          	j	800036e0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	cd4080e7          	jalr	-812(ra) # 80002384 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800036b8:	00008797          	auipc	a5,0x8
    800036bc:	5c07b783          	ld	a5,1472(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x68>
    800036c0:	0007c783          	lbu	a5,0(a5)
    800036c4:	00078e63          	beqz	a5,800036e0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036c8:	00000097          	auipc	ra,0x0
    800036cc:	fa4080e7          	jalr	-92(ra) # 8000366c <_ZN8KConsole17outputBufferEmptyEv>
    800036d0:	00050863          	beqz	a0,800036e0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800036d4:	00008797          	auipc	a5,0x8
    800036d8:	66c7b783          	ld	a5,1644(a5) # 8000bd40 <_ZN8KConsole11pendingGetcE>
    800036dc:	fc0784e3          	beqz	a5,800036a4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800036e0:	00008797          	auipc	a5,0x8
    800036e4:	5407b783          	ld	a5,1344(a5) # 8000bc20 <_GLOBAL_OFFSET_TABLE_+0x10>
    800036e8:	0007b783          	ld	a5,0(a5)
    800036ec:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800036f0:	0207f793          	andi	a5,a5,32
    800036f4:	fa078ee3          	beqz	a5,800036b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800036f8:	00008797          	auipc	a5,0x8
    800036fc:	6607b783          	ld	a5,1632(a5) # 8000bd58 <_ZN8KConsole11pendingPutcE>
    80003700:	fa0788e3          	beqz	a5,800036b0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	e68080e7          	jalr	-408(ra) # 8000256c <_Z20sysCallGetCharOutputv>
    8000370c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003710:	00008717          	auipc	a4,0x8
    80003714:	61070713          	addi	a4,a4,1552 # 8000bd20 <_ZN8KConsole18hasCharactersInputE>
    80003718:	03873783          	ld	a5,56(a4)
    8000371c:	fff78793          	addi	a5,a5,-1
    80003720:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003724:	00008797          	auipc	a5,0x8
    80003728:	4f47b783          	ld	a5,1268(a5) # 8000bc18 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000372c:	0007b783          	ld	a5,0(a5)
    80003730:	fef44703          	lbu	a4,-17(s0)
    80003734:	00e78023          	sb	a4,0(a5)
    80003738:	f81ff06f          	j	800036b8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

000000008000373c <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00113423          	sd	ra,8(sp)
    80003744:	00813023          	sd	s0,0(sp)
    80003748:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	dec080e7          	jalr	-532(ra) # 80003538 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003754:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003758:	00001097          	auipc	ra,0x1
    8000375c:	fb8080e7          	jalr	-72(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	00813823          	sd	s0,16(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003788:	0004c503          	lbu	a0,0(s1)
    8000378c:	00050a63          	beqz	a0,800037a0 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003790:	00000097          	auipc	ra,0x0
    80003794:	d30080e7          	jalr	-720(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003798:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000379c:	fedff06f          	j	80003788 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800037a0:	01813083          	ld	ra,24(sp)
    800037a4:	01013403          	ld	s0,16(sp)
    800037a8:	00813483          	ld	s1,8(sp)
    800037ac:	02010113          	addi	sp,sp,32
    800037b0:	00008067          	ret

00000000800037b4 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800037b4:	fb010113          	addi	sp,sp,-80
    800037b8:	04113423          	sd	ra,72(sp)
    800037bc:	04813023          	sd	s0,64(sp)
    800037c0:	02913c23          	sd	s1,56(sp)
    800037c4:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800037c8:	00006797          	auipc	a5,0x6
    800037cc:	ba078793          	addi	a5,a5,-1120 # 80009368 <CONSOLE_STATUS+0x358>
    800037d0:	0007b703          	ld	a4,0(a5)
    800037d4:	fce43423          	sd	a4,-56(s0)
    800037d8:	0087b703          	ld	a4,8(a5)
    800037dc:	fce43823          	sd	a4,-48(s0)
    800037e0:	0107c783          	lbu	a5,16(a5)
    800037e4:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800037e8:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800037ec:	02b57733          	remu	a4,a0,a1
    800037f0:	fe040693          	addi	a3,s0,-32
    800037f4:	00e68733          	add	a4,a3,a4
    800037f8:	fe874703          	lbu	a4,-24(a4)
    800037fc:	009687b3          	add	a5,a3,s1
    80003800:	0014849b          	addiw	s1,s1,1
    80003804:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003808:	00050793          	mv	a5,a0
    8000380c:	02b55533          	divu	a0,a0,a1
    80003810:	fcb7fee3          	bgeu	a5,a1,800037ec <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003814:	fff4849b          	addiw	s1,s1,-1
    80003818:	0004ce63          	bltz	s1,80003834 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    8000381c:	fe040793          	addi	a5,s0,-32
    80003820:	009787b3          	add	a5,a5,s1
    80003824:	fd87c503          	lbu	a0,-40(a5)
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	c98080e7          	jalr	-872(ra) # 800034c0 <_ZN8KConsole18putCharacterOutputEc>
    80003830:	fe5ff06f          	j	80003814 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003834:	04813083          	ld	ra,72(sp)
    80003838:	04013403          	ld	s0,64(sp)
    8000383c:	03813483          	ld	s1,56(sp)
    80003840:	05010113          	addi	sp,sp,80
    80003844:	00008067          	ret

0000000080003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00113c23          	sd	ra,24(sp)
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	00913423          	sd	s1,8(sp)
    80003858:	01213023          	sd	s2,0(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00058493          	mv	s1,a1
    80003864:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	f08080e7          	jalr	-248(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003870:	00000613          	li	a2,0
    80003874:	00090593          	mv	a1,s2
    80003878:	00048513          	mv	a0,s1
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	f38080e7          	jalr	-200(ra) # 800037b4 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003884:	00006517          	auipc	a0,0x6
    80003888:	8fc50513          	addi	a0,a0,-1796 # 80009180 <CONSOLE_STATUS+0x170>
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	ee4080e7          	jalr	-284(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003894:	01813083          	ld	ra,24(sp)
    80003898:	01013403          	ld	s0,16(sp)
    8000389c:	00813483          	ld	s1,8(sp)
    800038a0:	00013903          	ld	s2,0(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800038ac:	ff010113          	addi	sp,sp,-16
    800038b0:	00813423          	sd	s0,8(sp)
    800038b4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800038b8:	00008797          	auipc	a5,0x8
    800038bc:	3c87b783          	ld	a5,968(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    800038c0:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800038c4:	00500793          	li	a5,5
    800038c8:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800038cc:	00010797          	auipc	a5,0x10
    800038d0:	4947b783          	ld	a5,1172(a5) # 80013d60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800038d4:	00000593          	li	a1,0
    while(curr != 0)
    800038d8:	02078063          	beqz	a5,800038f8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800038dc:	02063683          	ld	a3,32(a2)
    800038e0:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800038e4:	00e6e863          	bltu	a3,a4,800038f4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800038e8:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800038ec:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800038f0:	fe9ff06f          	j	800038d8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800038f4:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800038f8:	00058a63          	beqz	a1,8000390c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800038fc:	00c5b423          	sd	a2,8(a1)
}
    80003900:	00813403          	ld	s0,8(sp)
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000390c:	00010797          	auipc	a5,0x10
    80003910:	44c7ba23          	sd	a2,1108(a5) # 80013d60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003914:	fedff06f          	j	80003900 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003918 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003918:	00010517          	auipc	a0,0x10
    8000391c:	44853503          	ld	a0,1096(a0) # 80013d60 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003920:	06050e63          	beqz	a0,8000399c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003924:	06050c63          	beqz	a0,8000399c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003928:	02053783          	ld	a5,32(a0)
    8000392c:	00008717          	auipc	a4,0x8
    80003930:	33473703          	ld	a4,820(a4) # 8000bc60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003934:	00073703          	ld	a4,0(a4)
    80003938:	06f76263          	bltu	a4,a5,8000399c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    8000393c:	fe010113          	addi	sp,sp,-32
    80003940:	00113c23          	sd	ra,24(sp)
    80003944:	00813823          	sd	s0,16(sp)
    80003948:	00913423          	sd	s1,8(sp)
    8000394c:	02010413          	addi	s0,sp,32
    80003950:	0180006f          	j	80003968 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003954:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003958:	00008717          	auipc	a4,0x8
    8000395c:	30873703          	ld	a4,776(a4) # 8000bc60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003960:	00073703          	ld	a4,0(a4)
    80003964:	02f76263          	bltu	a4,a5,80003988 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003968:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    8000396c:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003970:	00000097          	auipc	ra,0x0
    80003974:	0b8080e7          	jalr	184(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003978:	00010797          	auipc	a5,0x10
    8000397c:	3e97b423          	sd	s1,1000(a5) # 80013d60 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003980:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003984:	fc0498e3          	bnez	s1,80003954 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	01013403          	ld	s0,16(sp)
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	02010113          	addi	sp,sp,32
    80003998:	00008067          	ret
    8000399c:	00008067          	ret

00000000800039a0 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00113423          	sd	ra,8(sp)
    800039a8:	00813023          	sd	s0,0(sp)
    800039ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800039b0:	00001097          	auipc	ra,0x1
    800039b4:	464080e7          	jalr	1124(ra) # 80004e14 <_ZN15MemoryAllocator7kmallocEm>
}
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00113423          	sd	ra,8(sp)
    800039d0:	00813023          	sd	s0,0(sp)
    800039d4:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800039d8:	00001097          	auipc	ra,0x1
    800039dc:	4ac080e7          	jalr	1196(ra) # 80004e84 <_ZN15MemoryAllocator5kfreeEPv>
}
    800039e0:	00813083          	ld	ra,8(sp)
    800039e4:	00013403          	ld	s0,0(sp)
    800039e8:	01010113          	addi	sp,sp,16
    800039ec:	00008067          	ret

00000000800039f0 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00813423          	sd	s0,8(sp)
    800039f8:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800039fc:	00010797          	auipc	a5,0x10
    80003a00:	36c7b783          	ld	a5,876(a5) # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003a04:	00000513          	li	a0,0
    while(curr != 0)
    80003a08:	00078863          	beqz	a5,80003a18 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003a0c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003a10:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003a14:	ff5ff06f          	j	80003a08 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003a18:	0005051b          	sext.w	a0,a0
    80003a1c:	00813403          	ld	s0,8(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	00008067          	ret

0000000080003a28 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003a28:	ff010113          	addi	sp,sp,-16
    80003a2c:	00813423          	sd	s0,8(sp)
    80003a30:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003a34:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003a38:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003a3c:	00010797          	auipc	a5,0x10
    80003a40:	32c7b783          	ld	a5,812(a5) # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a44:	02078263          	beqz	a5,80003a68 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003a48:	00010797          	auipc	a5,0x10
    80003a4c:	32078793          	addi	a5,a5,800 # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a50:	0087b703          	ld	a4,8(a5)
    80003a54:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003a58:	00a7b423          	sd	a0,8(a5)
    }
}
    80003a5c:	00813403          	ld	s0,8(sp)
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003a68:	00010797          	auipc	a5,0x10
    80003a6c:	30078793          	addi	a5,a5,768 # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a70:	00a7b423          	sd	a0,8(a5)
    80003a74:	00a7b023          	sd	a0,0(a5)
    80003a78:	fe5ff06f          	j	80003a5c <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003a7c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003a7c:	ff010113          	addi	sp,sp,-16
    80003a80:	00813423          	sd	s0,8(sp)
    80003a84:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003a88:	00010517          	auipc	a0,0x10
    80003a8c:	2e053503          	ld	a0,736(a0) # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003a90:	00050c63          	beqz	a0,80003aa8 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003a94:	00853783          	ld	a5,8(a0)
    80003a98:	00078e63          	beqz	a5,80003ab4 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003a9c:	00010717          	auipc	a4,0x10
    80003aa0:	2cf73623          	sd	a5,716(a4) # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003aa4:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003aa8:	00813403          	ld	s0,8(sp)
    80003aac:	01010113          	addi	sp,sp,16
    80003ab0:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003ab4:	00010797          	auipc	a5,0x10
    80003ab8:	2b478793          	addi	a5,a5,692 # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    80003abc:	0007b423          	sd	zero,8(a5)
    80003ac0:	0007b023          	sd	zero,0(a5)
    80003ac4:	fe1ff06f          	j	80003aa4 <_ZN9Scheduler3getEv+0x28>

0000000080003ac8 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003ac8:	fe010113          	addi	sp,sp,-32
    80003acc:	00113c23          	sd	ra,24(sp)
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00913423          	sd	s1,8(sp)
    80003ad8:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003adc:	00010497          	auipc	s1,0x10
    80003ae0:	28c4b483          	ld	s1,652(s1) # 80013d68 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003ae4:	02048863          	beqz	s1,80003b14 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003ae8:	00000613          	li	a2,0
    80003aec:	01000593          	li	a1,16
    80003af0:	00048513          	mv	a0,s1
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	cc0080e7          	jalr	-832(ra) # 800037b4 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003afc:	00005517          	auipc	a0,0x5
    80003b00:	68450513          	addi	a0,a0,1668 # 80009180 <CONSOLE_STATUS+0x170>
    80003b04:	00000097          	auipc	ra,0x0
    80003b08:	c6c080e7          	jalr	-916(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003b0c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003b10:	fd5ff06f          	j	80003ae4 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003b14:	01813083          	ld	ra,24(sp)
    80003b18:	01013403          	ld	s0,16(sp)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret

0000000080003b28 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00113423          	sd	ra,8(sp)
    80003b30:	00813023          	sd	s0,0(sp)
    80003b34:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003b38:	00001097          	auipc	ra,0x1
    80003b3c:	b3c080e7          	jalr	-1220(ra) # 80004674 <_ZN5Riscv10kernelMainEv>
    80003b40:	00813083          	ld	ra,8(sp)
    80003b44:	00013403          	ld	s0,0(sp)
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	00008067          	ret

0000000080003b50 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"
#include "../h/KConsole.hpp"
#include "../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00113423          	sd	ra,8(sp)
    80003b58:	00813023          	sd	s0,0(sp)
    80003b5c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003b60:	01200593          	li	a1,18
    80003b64:	00008797          	auipc	a5,0x8
    80003b68:	0c47b783          	ld	a5,196(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b6c:	0007b503          	ld	a0,0(a5)
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	4e0080e7          	jalr	1248(ra) # 80003050 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	630080e7          	jalr	1584(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b80:	00813083          	ld	ra,8(sp)
    80003b84:	00013403          	ld	s0,0(sp)
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret

0000000080003b90 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00813823          	sd	s0,16(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003ba4:	00a00593          	li	a1,10
    80003ba8:	00008797          	auipc	a5,0x8
    80003bac:	0807b783          	ld	a5,128(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003bb0:	0007b503          	ld	a0,0(a5)
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	49c080e7          	jalr	1180(ra) # 80003050 <_Z10buddy_initPvm>
    80003bbc:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	5e8080e7          	jalr	1512(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003bc8:	00100593          	li	a1,1
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	270080e7          	jalr	624(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	5cc080e7          	jalr	1484(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003be4:	00100593          	li	a1,1
    80003be8:	00048513          	mv	a0,s1
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	254080e7          	jalr	596(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	5b0080e7          	jalr	1456(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003c00:	00100593          	li	a1,1
    80003c04:	00048513          	mv	a0,s1
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	238080e7          	jalr	568(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c10:	00048513          	mv	a0,s1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	594080e7          	jalr	1428(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003c1c:	00300593          	li	a1,3
    80003c20:	00048513          	mv	a0,s1
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	21c080e7          	jalr	540(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	578080e7          	jalr	1400(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret

0000000080003c4c <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003c60:	00a00593          	li	a1,10
    80003c64:	00008797          	auipc	a5,0x8
    80003c68:	fc47b783          	ld	a5,-60(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003c6c:	0007b503          	ld	a0,0(a5)
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	3e0080e7          	jalr	992(ra) # 80003050 <_Z10buddy_initPvm>
    80003c78:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003c7c:	06400593          	li	a1,100
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	1c0080e7          	jalr	448(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003c88:	00050c63          	beqz	a0,80003ca0 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003c8c:	01813083          	ld	ra,24(sp)
    80003c90:	01013403          	ld	s0,16(sp)
    80003c94:	00813483          	ld	s1,8(sp)
    80003c98:	02010113          	addi	sp,sp,32
    80003c9c:	00008067          	ret
        printBuddyInfo(buddy);
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	504080e7          	jalr	1284(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003cac:	fe1ff06f          	j	80003c8c <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003cb0 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003cb0:	fd010113          	addi	sp,sp,-48
    80003cb4:	02113423          	sd	ra,40(sp)
    80003cb8:	02813023          	sd	s0,32(sp)
    80003cbc:	00913c23          	sd	s1,24(sp)
    80003cc0:	01213823          	sd	s2,16(sp)
    80003cc4:	01313423          	sd	s3,8(sp)
    80003cc8:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003ccc:	00a00593          	li	a1,10
    80003cd0:	00008797          	auipc	a5,0x8
    80003cd4:	f587b783          	ld	a5,-168(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003cd8:	0007b503          	ld	a0,0(a5)
    80003cdc:	fffff097          	auipc	ra,0xfffff
    80003ce0:	374080e7          	jalr	884(ra) # 80003050 <_Z10buddy_initPvm>
    80003ce4:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	4c0080e7          	jalr	1216(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003cf0:	00100593          	li	a1,1
    80003cf4:	00048513          	mv	a0,s1
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	148080e7          	jalr	328(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    80003d00:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d04:	00048513          	mv	a0,s1
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	4a0080e7          	jalr	1184(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003d10:	00100613          	li	a2,1
    80003d14:	00090593          	mv	a1,s2
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	fffff097          	auipc	ra,0xfffff
    80003d20:	414080e7          	jalr	1044(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d24:	00048513          	mv	a0,s1
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	480080e7          	jalr	1152(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003d30:	00200593          	li	a1,2
    80003d34:	00048513          	mv	a0,s1
    80003d38:	fffff097          	auipc	ra,0xfffff
    80003d3c:	108080e7          	jalr	264(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    80003d40:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003d44:	00300593          	li	a1,3
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	0f4080e7          	jalr	244(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    80003d54:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	44c080e7          	jalr	1100(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003d64:	00200613          	li	a2,2
    80003d68:	00090593          	mv	a1,s2
    80003d6c:	00048513          	mv	a0,s1
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	3c0080e7          	jalr	960(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	42c080e7          	jalr	1068(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003d84:	00100593          	li	a1,1
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	0b4080e7          	jalr	180(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    80003d94:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	40c080e7          	jalr	1036(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003da4:	00300613          	li	a2,3
    80003da8:	00098593          	mv	a1,s3
    80003dac:	00048513          	mv	a0,s1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	380080e7          	jalr	896(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003db8:	00048513          	mv	a0,s1
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	3ec080e7          	jalr	1004(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003dc4:	00100613          	li	a2,1
    80003dc8:	00090593          	mv	a1,s2
    80003dcc:	00048513          	mv	a0,s1
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	360080e7          	jalr	864(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003dd8:	00048513          	mv	a0,s1
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	3cc080e7          	jalr	972(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003de4:	02813083          	ld	ra,40(sp)
    80003de8:	02013403          	ld	s0,32(sp)
    80003dec:	01813483          	ld	s1,24(sp)
    80003df0:	01013903          	ld	s2,16(sp)
    80003df4:	00813983          	ld	s3,8(sp)
    80003df8:	03010113          	addi	sp,sp,48
    80003dfc:	00008067          	ret

0000000080003e00 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003e00:	fc010113          	addi	sp,sp,-64
    80003e04:	02113c23          	sd	ra,56(sp)
    80003e08:	02813823          	sd	s0,48(sp)
    80003e0c:	02913423          	sd	s1,40(sp)
    80003e10:	03213023          	sd	s2,32(sp)
    80003e14:	01313c23          	sd	s3,24(sp)
    80003e18:	01413823          	sd	s4,16(sp)
    80003e1c:	01513423          	sd	s5,8(sp)
    80003e20:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003e24:	00008797          	auipc	a5,0x8
    80003e28:	e047b783          	ld	a5,-508(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003e2c:	0007b983          	ld	s3,0(a5)
    80003e30:	fffff7b7          	lui	a5,0xfffff
    80003e34:	00f9f9b3          	and	s3,s3,a5
    80003e38:	000017b7          	lui	a5,0x1
    80003e3c:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003e40:	0000a537          	lui	a0,0xa
    80003e44:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	fcc080e7          	jalr	-52(ra) # 80004e14 <_ZN15MemoryAllocator7kmallocEm>
    80003e50:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003e54:	00098513          	mv	a0,s3
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	350080e7          	jalr	848(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003e60:	00000493          	li	s1,0
    80003e64:	0080006f          	j	80003e6c <_Z13buddyTestMixav+0x6c>
    80003e68:	0014849b          	addiw	s1,s1,1
    80003e6c:	000017b7          	lui	a5,0x1
    80003e70:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003e74:	0697c463          	blt	a5,s1,80003edc <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003e78:	00349913          	slli	s2,s1,0x3
    80003e7c:	012a0933          	add	s2,s4,s2
    80003e80:	00200593          	li	a1,2
    80003e84:	00098513          	mv	a0,s3
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	fb8080e7          	jalr	-72(ra) # 80002e40 <_Z11buddy_allocP14buddyAllocatorm>
    80003e90:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003e94:	fc051ae3          	bnez	a0,80003e68 <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003e98:	00a00613          	li	a2,10
    80003e9c:	00048593          	mv	a1,s1
    80003ea0:	00005517          	auipc	a0,0x5
    80003ea4:	4e050513          	addi	a0,a0,1248 # 80009380 <CONSOLE_STATUS+0x370>
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	9a0080e7          	jalr	-1632(ra) # 80003848 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003eb0:	00000913          	li	s2,0
    80003eb4:	02995463          	bge	s2,s1,80003edc <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003eb8:	00391793          	slli	a5,s2,0x3
    80003ebc:	00fa07b3          	add	a5,s4,a5
    80003ec0:	00200613          	li	a2,2
    80003ec4:	0007b583          	ld	a1,0(a5)
    80003ec8:	00098513          	mv	a0,s3
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	264080e7          	jalr	612(ra) # 80003130 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003ed4:	0019091b          	addiw	s2,s2,1
    80003ed8:	fddff06f          	j	80003eb4 <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003edc:	00098513          	mv	a0,s3
    80003ee0:	fffff097          	auipc	ra,0xfffff
    80003ee4:	2c8080e7          	jalr	712(ra) # 800031a8 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003ee8:	03813083          	ld	ra,56(sp)
    80003eec:	03013403          	ld	s0,48(sp)
    80003ef0:	02813483          	ld	s1,40(sp)
    80003ef4:	02013903          	ld	s2,32(sp)
    80003ef8:	01813983          	ld	s3,24(sp)
    80003efc:	01013a03          	ld	s4,16(sp)
    80003f00:	00813a83          	ld	s5,8(sp)
    80003f04:	04010113          	addi	sp,sp,64
    80003f08:	00008067          	ret

0000000080003f0c <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003f1c:	00053783          	ld	a5,0(a0)
    80003f20:	0107b783          	ld	a5,16(a5)
    80003f24:	000780e7          	jalr	a5
}
    80003f28:	00813083          	ld	ra,8(sp)
    80003f2c:	00013403          	ld	s0,0(sp)
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret

0000000080003f38 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003f38:	00008797          	auipc	a5,0x8
    80003f3c:	c6078793          	addi	a5,a5,-928 # 8000bb98 <_ZTV6Thread+0x10>
    80003f40:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003f44:	00853503          	ld	a0,8(a0)
    80003f48:	02050663          	beqz	a0,80003f74 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003f4c:	ff010113          	addi	sp,sp,-16
    80003f50:	00113423          	sd	ra,8(sp)
    80003f54:	00813023          	sd	s0,0(sp)
    80003f58:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	664080e7          	jalr	1636(ra) # 800025c0 <_ZN7_threaddlEPv>
}
    80003f64:	00813083          	ld	ra,8(sp)
    80003f68:	00013403          	ld	s0,0(sp)
    80003f6c:	01010113          	addi	sp,sp,16
    80003f70:	00008067          	ret
    80003f74:	00008067          	ret

0000000080003f78 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003f78:	00008797          	auipc	a5,0x8
    80003f7c:	c4878793          	addi	a5,a5,-952 # 8000bbc0 <_ZTV9Semaphore+0x10>
    80003f80:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003f84:	00853503          	ld	a0,8(a0)
    80003f88:	02050663          	beqz	a0,80003fb4 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003f8c:	ff010113          	addi	sp,sp,-16
    80003f90:	00113423          	sd	ra,8(sp)
    80003f94:	00813023          	sd	s0,0(sp)
    80003f98:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003f9c:	00000097          	auipc	ra,0x0
    80003fa0:	464080e7          	jalr	1124(ra) # 80004400 <_ZN4_semdlEPv>
}
    80003fa4:	00813083          	ld	ra,8(sp)
    80003fa8:	00013403          	ld	s0,0(sp)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret
    80003fb4:	00008067          	ret

0000000080003fb8 <_Znwm>:
{
    80003fb8:	ff010113          	addi	sp,sp,-16
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	00813023          	sd	s0,0(sp)
    80003fc4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	320080e7          	jalr	800(ra) # 800022e8 <_Z9mem_allocm>
}
    80003fd0:	00813083          	ld	ra,8(sp)
    80003fd4:	00013403          	ld	s0,0(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZdlPv>:
{
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	328080e7          	jalr	808(ra) # 80002318 <_Z8mem_freePv>
}
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	02010413          	addi	s0,sp,32
    8000401c:	00050493          	mv	s1,a0
}
    80004020:	00000097          	auipc	ra,0x0
    80004024:	f18080e7          	jalr	-232(ra) # 80003f38 <_ZN6ThreadD1Ev>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	fb4080e7          	jalr	-76(ra) # 80003fe0 <_ZdlPv>
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00813483          	ld	s1,8(sp)
    80004040:	02010113          	addi	sp,sp,32
    80004044:	00008067          	ret

0000000080004048 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004048:	fe010113          	addi	sp,sp,-32
    8000404c:	00113c23          	sd	ra,24(sp)
    80004050:	00813823          	sd	s0,16(sp)
    80004054:	00913423          	sd	s1,8(sp)
    80004058:	02010413          	addi	s0,sp,32
    8000405c:	00050493          	mv	s1,a0
}
    80004060:	00000097          	auipc	ra,0x0
    80004064:	f18080e7          	jalr	-232(ra) # 80003f78 <_ZN9SemaphoreD1Ev>
    80004068:	00048513          	mv	a0,s1
    8000406c:	00000097          	auipc	ra,0x0
    80004070:	f74080e7          	jalr	-140(ra) # 80003fe0 <_ZdlPv>
    80004074:	01813083          	ld	ra,24(sp)
    80004078:	01013403          	ld	s0,16(sp)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret

0000000080004088 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    80004088:	00853503          	ld	a0,8(a0)
    8000408c:	02050663          	beqz	a0,800040b8 <_ZN6Thread5startEv+0x30>
{
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00113423          	sd	ra,8(sp)
    80004098:	00813023          	sd	s0,0(sp)
    8000409c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	414080e7          	jalr	1044(ra) # 800024b4 <_Z12thread_startPv>
}
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret
        return -1;
    800040b8:	fff00513          	li	a0,-1
}
    800040bc:	00008067          	ret

00000000800040c0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00113423          	sd	ra,8(sp)
    800040c8:	00813023          	sd	s0,0(sp)
    800040cc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	2b4080e7          	jalr	692(ra) # 80002384 <_Z15thread_dispatchv>
}
    800040d8:	00813083          	ld	ra,8(sp)
    800040dc:	00013403          	ld	s0,0(sp)
    800040e0:	01010113          	addi	sp,sp,16
    800040e4:	00008067          	ret

00000000800040e8 <_ZN6Thread5sleepEm>:
{
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	00813023          	sd	s0,0(sp)
    800040f4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	390080e7          	jalr	912(ra) # 80002488 <_Z10time_sleepm>
}
    80004100:	00813083          	ld	ra,8(sp)
    80004104:	00013403          	ld	s0,0(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret

0000000080004110 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	00113c23          	sd	ra,24(sp)
    80004118:	00813823          	sd	s0,16(sp)
    8000411c:	00913423          	sd	s1,8(sp)
    80004120:	01213023          	sd	s2,0(sp)
    80004124:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80004128:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000412c:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80004130:	0004b783          	ld	a5,0(s1)
    80004134:	0187b783          	ld	a5,24(a5)
    80004138:	00048513          	mv	a0,s1
    8000413c:	000780e7          	jalr	a5
        Thread::sleep(time);
    80004140:	00090513          	mv	a0,s2
    80004144:	00000097          	auipc	ra,0x0
    80004148:	fa4080e7          	jalr	-92(ra) # 800040e8 <_ZN6Thread5sleepEm>
    while(true)
    8000414c:	fe5ff06f          	j	80004130 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080004150 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00113423          	sd	ra,8(sp)
    80004158:	00813023          	sd	s0,0(sp)
    8000415c:	01010413          	addi	s0,sp,16
    80004160:	00008797          	auipc	a5,0x8
    80004164:	a3878793          	addi	a5,a5,-1480 # 8000bb98 <_ZTV6Thread+0x10>
    80004168:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000416c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80004170:	00850513          	addi	a0,a0,8
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	36c080e7          	jalr	876(ra) # 800024e0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000417c:	00813083          	ld	ra,8(sp)
    80004180:	00013403          	ld	s0,0(sp)
    80004184:	01010113          	addi	sp,sp,16
    80004188:	00008067          	ret

000000008000418c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000418c:	ff010113          	addi	sp,sp,-16
    80004190:	00113423          	sd	ra,8(sp)
    80004194:	00813023          	sd	s0,0(sp)
    80004198:	01010413          	addi	s0,sp,16
    8000419c:	00008797          	auipc	a5,0x8
    800041a0:	9fc78793          	addi	a5,a5,-1540 # 8000bb98 <_ZTV6Thread+0x10>
    800041a4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    800041a8:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    800041ac:	00050613          	mv	a2,a0
    800041b0:	00000597          	auipc	a1,0x0
    800041b4:	d5c58593          	addi	a1,a1,-676 # 80003f0c <_ZN6Thread6runnerEPv>
    800041b8:	00850513          	addi	a0,a0,8
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	324080e7          	jalr	804(ra) # 800024e0 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    800041c4:	00813083          	ld	ra,8(sp)
    800041c8:	00013403          	ld	s0,0(sp)
    800041cc:	01010113          	addi	sp,sp,16
    800041d0:	00008067          	ret

00000000800041d4 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    800041d4:	00853503          	ld	a0,8(a0)
    800041d8:	02050663          	beqz	a0,80004204 <_ZN9Semaphore4waitEv+0x30>
{
    800041dc:	ff010113          	addi	sp,sp,-16
    800041e0:	00113423          	sd	ra,8(sp)
    800041e4:	00813023          	sd	s0,0(sp)
    800041e8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	244080e7          	jalr	580(ra) # 80002430 <_Z8sem_waitP4_sem>
}
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret
        return -1;
    80004204:	fff00513          	li	a0,-1
}
    80004208:	00008067          	ret

000000008000420c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000420c:	fe010113          	addi	sp,sp,-32
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00813823          	sd	s0,16(sp)
    80004218:	00913423          	sd	s1,8(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00050493          	mv	s1,a0
    80004224:	00008797          	auipc	a5,0x8
    80004228:	99c78793          	addi	a5,a5,-1636 # 8000bbc0 <_ZTV9Semaphore+0x10>
    8000422c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80004230:	00850513          	addi	a0,a0,8
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	198080e7          	jalr	408(ra) # 800023cc <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000423c:	00050463          	beqz	a0,80004244 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    80004240:	0004b423          	sd	zero,8(s1)
}
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret

0000000080004258 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    80004258:	00853503          	ld	a0,8(a0)
    8000425c:	02050663          	beqz	a0,80004288 <_ZN9Semaphore6signalEv+0x30>
{
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	1ec080e7          	jalr	492(ra) # 8000245c <_Z10sem_signalP4_sem>
}
    80004278:	00813083          	ld	ra,8(sp)
    8000427c:	00013403          	ld	s0,0(sp)
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret
        return -1;
    80004288:	fff00513          	li	a0,-1
}
    8000428c:	00008067          	ret

0000000080004290 <_ZN7Console4getcEv>:
{
    80004290:	ff010113          	addi	sp,sp,-16
    80004294:	00113423          	sd	ra,8(sp)
    80004298:	00813023          	sd	s0,0(sp)
    8000429c:	01010413          	addi	s0,sp,16
    return ::getc();
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	280080e7          	jalr	640(ra) # 80002520 <_Z4getcv>
}
    800042a8:	00813083          	ld	ra,8(sp)
    800042ac:	00013403          	ld	s0,0(sp)
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <_ZN7Console4putcEc>:
{
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00113423          	sd	ra,8(sp)
    800042c0:	00813023          	sd	s0,0(sp)
    800042c4:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	280080e7          	jalr	640(ra) # 80002548 <_Z4putcc>
}
    800042d0:	00813083          	ld	ra,8(sp)
    800042d4:	00013403          	ld	s0,0(sp)
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00008067          	ret

00000000800042e0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	00813823          	sd	s0,16(sp)
    800042ec:	00913423          	sd	s1,8(sp)
    800042f0:	01213023          	sd	s2,0(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	00050493          	mv	s1,a0
    800042fc:	00058913          	mv	s2,a1
    80004300:	01000513          	li	a0,16
    80004304:	00000097          	auipc	ra,0x0
    80004308:	cb4080e7          	jalr	-844(ra) # 80003fb8 <_Znwm>
    8000430c:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80004310:	00953023          	sd	s1,0(a0)
    80004314:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004318:	00000597          	auipc	a1,0x0
    8000431c:	df858593          	addi	a1,a1,-520 # 80004110 <_ZN14PeriodicThread6runnerEPv>
    80004320:	00048513          	mv	a0,s1
    80004324:	00000097          	auipc	ra,0x0
    80004328:	e2c080e7          	jalr	-468(ra) # 80004150 <_ZN6ThreadC1EPFvPvES0_>
    8000432c:	00008797          	auipc	a5,0x8
    80004330:	83c78793          	addi	a5,a5,-1988 # 8000bb68 <_ZTV14PeriodicThread+0x10>
    80004334:	00f4b023          	sd	a5,0(s1)
}
    80004338:	01813083          	ld	ra,24(sp)
    8000433c:	01013403          	ld	s0,16(sp)
    80004340:	00813483          	ld	s1,8(sp)
    80004344:	00013903          	ld	s2,0(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00813423          	sd	s0,8(sp)
    80004358:	01010413          	addi	s0,sp,16
    8000435c:	00813403          	ld	s0,8(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00813423          	sd	s0,8(sp)
    80004370:	01010413          	addi	s0,sp,16
    80004374:	00813403          	ld	s0,8(sp)
    80004378:	01010113          	addi	sp,sp,16
    8000437c:	00008067          	ret

0000000080004380 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80004380:	ff010113          	addi	sp,sp,-16
    80004384:	00113423          	sd	ra,8(sp)
    80004388:	00813023          	sd	s0,0(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	00007797          	auipc	a5,0x7
    80004394:	7d878793          	addi	a5,a5,2008 # 8000bb68 <_ZTV14PeriodicThread+0x10>
    80004398:	00f53023          	sd	a5,0(a0)
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	b9c080e7          	jalr	-1124(ra) # 80003f38 <_ZN6ThreadD1Ev>
    800043a4:	00813083          	ld	ra,8(sp)
    800043a8:	00013403          	ld	s0,0(sp)
    800043ac:	01010113          	addi	sp,sp,16
    800043b0:	00008067          	ret

00000000800043b4 <_ZN14PeriodicThreadD0Ev>:
    800043b4:	fe010113          	addi	sp,sp,-32
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	00813823          	sd	s0,16(sp)
    800043c0:	00913423          	sd	s1,8(sp)
    800043c4:	02010413          	addi	s0,sp,32
    800043c8:	00050493          	mv	s1,a0
    800043cc:	00007797          	auipc	a5,0x7
    800043d0:	79c78793          	addi	a5,a5,1948 # 8000bb68 <_ZTV14PeriodicThread+0x10>
    800043d4:	00f53023          	sd	a5,0(a0)
    800043d8:	00000097          	auipc	ra,0x0
    800043dc:	b60080e7          	jalr	-1184(ra) # 80003f38 <_ZN6ThreadD1Ev>
    800043e0:	00048513          	mv	a0,s1
    800043e4:	00000097          	auipc	ra,0x0
    800043e8:	bfc080e7          	jalr	-1028(ra) # 80003fe0 <_ZdlPv>
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	00813483          	ld	s1,8(sp)
    800043f8:	02010113          	addi	sp,sp,32
    800043fc:	00008067          	ret

0000000080004400 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80004400:	ff010113          	addi	sp,sp,-16
    80004404:	00113423          	sd	ra,8(sp)
    80004408:	00813023          	sd	s0,0(sp)
    8000440c:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	ff4080e7          	jalr	-12(ra) # 80002404 <_Z9sem_closeP4_sem>
}
    80004418:	00813083          	ld	ra,8(sp)
    8000441c:	00013403          	ld	s0,0(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret

0000000080004428 <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00113423          	sd	ra,8(sp)
    80004430:	00813023          	sd	s0,0(sp)
    80004434:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004438:	00007797          	auipc	a5,0x7
    8000443c:	7f07b783          	ld	a5,2032(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004440:	0007b503          	ld	a0,0(a5)
    80004444:	00008797          	auipc	a5,0x8
    80004448:	8447b783          	ld	a5,-1980(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000444c:	0007b783          	ld	a5,0(a5)
    80004450:	40a787b3          	sub	a5,a5,a0
    80004454:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004458:	00a00713          	li	a4,10
    8000445c:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004460:	00001737          	lui	a4,0x1
    80004464:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004468:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    8000446c:	fffff737          	lui	a4,0xfffff
    80004470:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004474:	00f50533          	add	a0,a0,a5
    80004478:	00000097          	auipc	ra,0x0
    8000447c:	5ac080e7          	jalr	1452(ra) # 80004a24 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    80004480:	00813083          	ld	ra,8(sp)
    80004484:	00013403          	ld	s0,0(sp)
    80004488:	01010113          	addi	sp,sp,16
    8000448c:	00008067          	ret

0000000080004490 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    80004490:	fe010113          	addi	sp,sp,-32
    80004494:	00113c23          	sd	ra,24(sp)
    80004498:	00813823          	sd	s0,16(sp)
    8000449c:	00913423          	sd	s1,8(sp)
    800044a0:	01213023          	sd	s2,0(sp)
    800044a4:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	7907b783          	ld	a5,1936(a5) # 8000bc38 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800044b0:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800044b4:	00007497          	auipc	s1,0x7
    800044b8:	7744b483          	ld	s1,1908(s1) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    800044bc:	0004b503          	ld	a0,0(s1)
    800044c0:	00007797          	auipc	a5,0x7
    800044c4:	7c87b783          	ld	a5,1992(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x78>
    800044c8:	0007b783          	ld	a5,0(a5)
    800044cc:	40a787b3          	sub	a5,a5,a0
    800044d0:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    800044d4:	00a00713          	li	a4,10
    800044d8:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    800044dc:	00001737          	lui	a4,0x1
    800044e0:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800044e4:	00e787b3          	add	a5,a5,a4
    800044e8:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800044ec:	fffff737          	lui	a4,0xfffff
    800044f0:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    800044f4:	00f50533          	add	a0,a0,a5
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	52c080e7          	jalr	1324(ra) # 80004a24 <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004500:	0009059b          	sext.w	a1,s2
    80004504:	0004b503          	ld	a0,0(s1)
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	67c080e7          	jalr	1660(ra) # 80001b84 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004510:	00000693          	li	a3,0
    80004514:	00000613          	li	a2,0
    80004518:	06000593          	li	a1,96
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	e7450513          	addi	a0,a0,-396 # 80009390 <CONSOLE_STATUS+0x380>
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	7d0080e7          	jalr	2000(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000452c:	00010497          	auipc	s1,0x10
    80004530:	84c48493          	addi	s1,s1,-1972 # 80013d78 <_ZN5Riscv8pcbCacheE>
    80004534:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004538:	00000693          	li	a3,0
    8000453c:	00000613          	li	a2,0
    80004540:	01800593          	li	a1,24
    80004544:	00005517          	auipc	a0,0x5
    80004548:	e5c50513          	addi	a0,a0,-420 # 800093a0 <CONSOLE_STATUS+0x390>
    8000454c:	ffffd097          	auipc	ra,0xffffd
    80004550:	7a8080e7          	jalr	1960(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004554:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80004558:	ffffe097          	auipc	ra,0xffffe
    8000455c:	270080e7          	jalr	624(ra) # 800027c8 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004560:	fffff097          	auipc	ra,0xfffff
    80004564:	d64080e7          	jalr	-668(ra) # 800032c4 <_ZN8KConsole10initializeEv>

}
    80004568:	01813083          	ld	ra,24(sp)
    8000456c:	01013403          	ld	s0,16(sp)
    80004570:	00813483          	ld	s1,8(sp)
    80004574:	00013903          	ld	s2,0(sp)
    80004578:	02010113          	addi	sp,sp,32
    8000457c:	00008067          	ret

0000000080004580 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80004580:	ff010113          	addi	sp,sp,-16
    80004584:	00813423          	sd	s0,8(sp)
    80004588:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000458c:	00200793          	li	a5,2
    80004590:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80004594:	00813403          	ld	s0,8(sp)
    80004598:	01010113          	addi	sp,sp,16
    8000459c:	00008067          	ret

00000000800045a0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800045a0:	ff010113          	addi	sp,sp,-16
    800045a4:	00813423          	sd	s0,8(sp)
    800045a8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800045ac:	00200793          	li	a5,2
    800045b0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800045b4:	00813403          	ld	s0,8(sp)
    800045b8:	01010113          	addi	sp,sp,16
    800045bc:	00008067          	ret

00000000800045c0 <_ZN5Riscv9endSystemEv>:
{
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00113423          	sd	ra,8(sp)
    800045c8:	00813023          	sd	s0,0(sp)
    800045cc:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800045d0:	00000097          	auipc	ra,0x0
    800045d4:	fd0080e7          	jalr	-48(ra) # 800045a0 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800045d8:	00100793          	li	a5,1
    800045dc:	0000f717          	auipc	a4,0xf
    800045e0:	7af70623          	sb	a5,1964(a4) # 80013d88 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	498080e7          	jalr	1176(ra) # 80003a7c <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800045ec:	fe051ce3          	bnez	a0,800045e4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    800045f0:	00007797          	auipc	a5,0x7
    800045f4:	6807b783          	ld	a5,1664(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x60>
    800045f8:	0007b503          	ld	a0,0(a5)
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	42c080e7          	jalr	1068(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004604:	00007797          	auipc	a5,0x7
    80004608:	63c7b783          	ld	a5,1596(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000460c:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004610:	00000097          	auipc	ra,0x0
    80004614:	f70080e7          	jalr	-144(ra) # 80004580 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80004618:	00007797          	auipc	a5,0x7
    8000461c:	6587b783          	ld	a5,1624(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004620:	0007b503          	ld	a0,0(a5)
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	2c4080e7          	jalr	708(ra) # 800028e8 <_ZN3PCB10isFinishedEv>
    8000462c:	00051863          	bnez	a0,8000463c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	d54080e7          	jalr	-684(ra) # 80002384 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004638:	fe1ff06f          	j	80004618 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    8000463c:	00000097          	auipc	ra,0x0
    80004640:	f64080e7          	jalr	-156(ra) # 800045a0 <_ZN5Riscv17disableInterruptsEv>
}
    80004644:	00813083          	ld	ra,8(sp)
    80004648:	00013403          	ld	s0,0(sp)
    8000464c:	01010113          	addi	sp,sp,16
    80004650:	00008067          	ret

0000000080004654 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00813423          	sd	s0,8(sp)
    8000465c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80004660:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004664:	10200073          	sret
}
    80004668:	00813403          	ld	s0,8(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004674:	0000f797          	auipc	a5,0xf
    80004678:	7157c783          	lbu	a5,1813(a5) # 80013d89 <_ZN5Riscv16kernelMainCalledE>
    8000467c:	00078463          	beqz	a5,80004684 <_ZN5Riscv10kernelMainEv+0x10>
    80004680:	00008067          	ret
{
    80004684:	ff010113          	addi	sp,sp,-16
    80004688:	00113423          	sd	ra,8(sp)
    8000468c:	00813023          	sd	s0,0(sp)
    80004690:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004694:	00100793          	li	a5,1
    80004698:	0000f717          	auipc	a4,0xf
    8000469c:	6ef708a3          	sb	a5,1777(a4) # 80013d89 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	df0080e7          	jalr	-528(ra) # 80004490 <_ZN5Riscv10initSystemEv>

    testOS2();
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	cd8080e7          	jalr	-808(ra) # 80005380 <_Z7testOS2v>
    //while(!PCB::userPCB->isFinished())
    //{
    //    thread_dispatch();
    //}

    endSystem();
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	f10080e7          	jalr	-240(ra) # 800045c0 <_ZN5Riscv9endSystemEv>
}
    800046b8:	00813083          	ld	ra,8(sp)
    800046bc:	00013403          	ld	s0,0(sp)
    800046c0:	01010113          	addi	sp,sp,16
    800046c4:	00008067          	ret

00000000800046c8 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	00813023          	sd	s0,0(sp)
    800046d4:	01010413          	addi	s0,sp,16
    userMain();
    800046d8:	00002097          	auipc	ra,0x2
    800046dc:	e04080e7          	jalr	-508(ra) # 800064dc <_Z8userMainv>
}
    800046e0:	00813083          	ld	ra,8(sp)
    800046e4:	00013403          	ld	s0,0(sp)
    800046e8:	01010113          	addi	sp,sp,16
    800046ec:	00008067          	ret

00000000800046f0 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800046f0:	ff010113          	addi	sp,sp,-16
    800046f4:	00813423          	sd	s0,8(sp)
    800046f8:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800046fc:	00200793          	li	a5,2
    80004700:	1047b073          	csrc	sie,a5
}
    80004704:	00813403          	ld	s0,8(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret

0000000080004710 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00813423          	sd	s0,8(sp)
    80004718:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    8000471c:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004720:	00007717          	auipc	a4,0x7
    80004724:	56073703          	ld	a4,1376(a4) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004728:	00073703          	ld	a4,0(a4)
    8000472c:	01073703          	ld	a4,16(a4)
    80004730:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004734:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004738:	00078593          	mv	a1,a5
}
    8000473c:	00813403          	ld	s0,8(sp)
    80004740:	01010113          	addi	sp,sp,16
    80004744:	00008067          	ret

0000000080004748 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00813423          	sd	s0,8(sp)
    80004750:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004754:	00007797          	auipc	a5,0x7
    80004758:	52c7b783          	ld	a5,1324(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000475c:	0007b783          	ld	a5,0(a5)
    80004760:	0007c783          	lbu	a5,0(a5)
    80004764:	00078c63          	beqz	a5,8000477c <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004768:	10000793          	li	a5,256
    8000476c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004770:	00813403          	ld	s0,8(sp)
    80004774:	01010113          	addi	sp,sp,16
    80004778:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000477c:	10000793          	li	a5,256
    80004780:	1007b073          	csrc	sstatus,a5
    80004784:	fedff06f          	j	80004770 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004788 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80004788:	f9010113          	addi	sp,sp,-112
    8000478c:	06113423          	sd	ra,104(sp)
    80004790:	06813023          	sd	s0,96(sp)
    80004794:	04913c23          	sd	s1,88(sp)
    80004798:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    8000479c:	00070713          	mv	a4,a4
    800047a0:	00007797          	auipc	a5,0x7
    800047a4:	5007b783          	ld	a5,1280(a5) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x90>
    800047a8:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800047ac:	00007797          	auipc	a5,0x7
    800047b0:	4d47b783          	ld	a5,1236(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    800047b4:	0007b783          	ld	a5,0(a5)
    800047b8:	14002773          	csrr	a4,sscratch
    800047bc:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800047c0:	142027f3          	csrr	a5,scause
    800047c4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800047c8:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    800047cc:	00900713          	li	a4,9
    800047d0:	02f76e63          	bltu	a4,a5,8000480c <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    800047d4:	00800713          	li	a4,8
    800047d8:	12e7f463          	bgeu	a5,a4,80004900 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800047dc:	00500713          	li	a4,5
    800047e0:	10e78a63          	beq	a5,a4,800048f4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    800047e4:	00700713          	li	a4,7
    800047e8:	00e79863          	bne	a5,a4,800047f8 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    800047ec:	ffffe097          	auipc	ra,0xffffe
    800047f0:	120080e7          	jalr	288(ra) # 8000290c <_ZN3PCB17threadExitHandlerEv>
            break;
    800047f4:	0dc0006f          	j	800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800047f8:	00200713          	li	a4,2
    800047fc:	0ce79a63          	bne	a5,a4,800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	10c080e7          	jalr	268(ra) # 8000290c <_ZN3PCB17threadExitHandlerEv>
            break;
    80004808:	0c80006f          	j	800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000480c:	fff00713          	li	a4,-1
    80004810:	03f71713          	slli	a4,a4,0x3f
    80004814:	00170713          	addi	a4,a4,1
    80004818:	02e78863          	beq	a5,a4,80004848 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    8000481c:	fff00713          	li	a4,-1
    80004820:	03f71713          	slli	a4,a4,0x3f
    80004824:	00970713          	addi	a4,a4,9
    80004828:	0ae79463          	bne	a5,a4,800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    8000482c:	fffff097          	auipc	ra,0xfffff
    80004830:	bb0080e7          	jalr	-1104(ra) # 800033dc <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004834:	00003097          	auipc	ra,0x3
    80004838:	850080e7          	jalr	-1968(ra) # 80007084 <plic_claim>
    8000483c:	00003097          	auipc	ra,0x3
    80004840:	880080e7          	jalr	-1920(ra) # 800070bc <plic_complete>
            break;
    80004844:	08c0006f          	j	800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004848:	141027f3          	csrr	a5,sepc
    8000484c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004850:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004854:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004858:	100027f3          	csrr	a5,sstatus
    8000485c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004860:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004864:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004868:	00200793          	li	a5,2
    8000486c:	1447b073          	csrc	sip,a5
            totalTime++;
    80004870:	0000f717          	auipc	a4,0xf
    80004874:	50870713          	addi	a4,a4,1288 # 80013d78 <_ZN5Riscv8pcbCacheE>
    80004878:	01873783          	ld	a5,24(a4)
    8000487c:	00178793          	addi	a5,a5,1
    80004880:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    80004884:	00007497          	auipc	s1,0x7
    80004888:	3cc4b483          	ld	s1,972(s1) # 8000bc50 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000488c:	0004b783          	ld	a5,0(s1)
    80004890:	00178793          	addi	a5,a5,1
    80004894:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	080080e7          	jalr	128(ra) # 80003918 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800048a0:	00007797          	auipc	a5,0x7
    800048a4:	3e07b783          	ld	a5,992(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    800048a8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800048ac:	0187b783          	ld	a5,24(a5)
    800048b0:	0004b703          	ld	a4,0(s1)
    800048b4:	02f77863          	bgeu	a4,a5,800048e4 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    800048b8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800048bc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800048c0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800048c4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	e80080e7          	jalr	-384(ra) # 80004748 <_ZN5Riscv14changePrivModeEv>
}
    800048d0:	06813083          	ld	ra,104(sp)
    800048d4:	06013403          	ld	s0,96(sp)
    800048d8:	05813483          	ld	s1,88(sp)
    800048dc:	07010113          	addi	sp,sp,112
    800048e0:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800048e4:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	dbc080e7          	jalr	-580(ra) # 800026a4 <_ZN3PCB8dispatchEv>
    800048f0:	fc9ff06f          	j	800048b8 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    800048f4:	ffffe097          	auipc	ra,0xffffe
    800048f8:	018080e7          	jalr	24(ra) # 8000290c <_ZN3PCB17threadExitHandlerEv>
            break;
    800048fc:	fd5ff06f          	j	800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004900:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004904:	14102773          	csrr	a4,sepc
    80004908:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    8000490c:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004910:	00470713          	addi	a4,a4,4
    80004914:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004918:	10002773          	csrr	a4,sstatus
    8000491c:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004920:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004924:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004928:	04300713          	li	a4,67
    8000492c:	02f76463          	bltu	a4,a5,80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80004930:	00279793          	slli	a5,a5,0x2
    80004934:	00005717          	auipc	a4,0x5
    80004938:	a8070713          	addi	a4,a4,-1408 # 800093b4 <CONSOLE_STATUS+0x3a4>
    8000493c:	00e787b3          	add	a5,a5,a4
    80004940:	0007a783          	lw	a5,0(a5)
    80004944:	00e787b3          	add	a5,a5,a4
    80004948:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	4f0080e7          	jalr	1264(ra) # 80004e3c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004954:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004958:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000495c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004960:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004964:	00000097          	auipc	ra,0x0
    80004968:	de4080e7          	jalr	-540(ra) # 80004748 <_ZN5Riscv14changePrivModeEv>
}
    8000496c:	f65ff06f          	j	800048d0 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80004970:	00000097          	auipc	ra,0x0
    80004974:	53c080e7          	jalr	1340(ra) # 80004eac <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004978:	fddff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	194080e7          	jalr	404(ra) # 80002b10 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004984:	fd1ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80004988:	ffffe097          	auipc	ra,0xffffe
    8000498c:	064080e7          	jalr	100(ra) # 800029ec <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004990:	fc5ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80004994:	ffffe097          	auipc	ra,0xffffe
    80004998:	138080e7          	jalr	312(ra) # 80002acc <_ZN3PCB18threadStartHandlerEv>
                    break;
    8000499c:	fb9ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800049a0:	ffffe097          	auipc	ra,0xffffe
    800049a4:	fb8080e7          	jalr	-72(ra) # 80002958 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800049a8:	fadff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800049ac:	ffffe097          	auipc	ra,0xffffe
    800049b0:	f60080e7          	jalr	-160(ra) # 8000290c <_ZN3PCB17threadExitHandlerEv>
                    break;
    800049b4:	fa1ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    800049b8:	ffffe097          	auipc	ra,0xffffe
    800049bc:	fd0080e7          	jalr	-48(ra) # 80002988 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800049c0:	f95ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	220080e7          	jalr	544(ra) # 80002be4 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    800049cc:	f89ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	cc4080e7          	jalr	-828(ra) # 80005694 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800049d8:	f7dff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	d68080e7          	jalr	-664(ra) # 80005744 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800049e4:	f71ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	db0080e7          	jalr	-592(ra) # 80005798 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800049f0:	f65ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	de8080e7          	jalr	-536(ra) # 800057dc <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800049fc:	f59ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004a00:	fffff097          	auipc	ra,0xfffff
    80004a04:	be0080e7          	jalr	-1056(ra) # 800035e0 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004a08:	f4dff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004a0c:	fffff097          	auipc	ra,0xfffff
    80004a10:	ba4080e7          	jalr	-1116(ra) # 800035b0 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004a14:	f41ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	d24080e7          	jalr	-732(ra) # 8000373c <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004a20:	f35ff06f          	j	80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004a24 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00813423          	sd	s0,8(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004a30:	0000f717          	auipc	a4,0xf
    80004a34:	36872703          	lw	a4,872(a4) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a38:	00100793          	li	a5,1
    80004a3c:	02f70c63          	beq	a4,a5,80004a74 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004a40:	0000f797          	auipc	a5,0xf
    80004a44:	35878793          	addi	a5,a5,856 # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a48:	00100713          	li	a4,1
    80004a4c:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004a50:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004a54:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004a58:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004a5c:	00007797          	auipc	a5,0x7
    80004a60:	22c7b783          	ld	a5,556(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004a64:	0007b783          	ld	a5,0(a5)
    80004a68:	40a787b3          	sub	a5,a5,a0
    80004a6c:	ff178793          	addi	a5,a5,-15
    80004a70:	00f53023          	sd	a5,0(a0)
}
    80004a74:	00813403          	ld	s0,8(sp)
    80004a78:	01010113          	addi	sp,sp,16
    80004a7c:	00008067          	ret

0000000080004a80 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004a80:	ff010113          	addi	sp,sp,-16
    80004a84:	00813423          	sd	s0,8(sp)
    80004a88:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004a8c:	0000f797          	auipc	a5,0xf
    80004a90:	30c7a783          	lw	a5,780(a5) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a94:	02078a63          	beqz	a5,80004ac8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004a98:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004a9c:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004aa0:	0000f797          	auipc	a5,0xf
    80004aa4:	3007b783          	ld	a5,768(a5) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    80004aa8:	02078663          	beqz	a5,80004ad4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004aac:	00007717          	auipc	a4,0x7
    80004ab0:	1dc73703          	ld	a4,476(a4) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004ab4:	00073703          	ld	a4,0(a4)
    80004ab8:	02c76463          	bltu	a4,a2,80004ae0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004abc:	00863783          	ld	a5,8(a2)
    80004ac0:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004ac4:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004ac8:	00813403          	ld	s0,8(sp)
    80004acc:	01010113          	addi	sp,sp,16
    80004ad0:	00008067          	ret
        headAllocated = newAllocated;
    80004ad4:	0000f797          	auipc	a5,0xf
    80004ad8:	2ca7b623          	sd	a0,716(a5) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    80004adc:	fedff06f          	j	80004ac8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004ae0:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004ae4:	0000f797          	auipc	a5,0xf
    80004ae8:	2aa7be23          	sd	a0,700(a5) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    80004aec:	fddff06f          	j	80004ac8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004af0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004af0:	ff010113          	addi	sp,sp,-16
    80004af4:	00813423          	sd	s0,8(sp)
    80004af8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004afc:	0000f797          	auipc	a5,0xf
    80004b00:	29c7a783          	lw	a5,668(a5) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b04:	02078c63          	beqz	a5,80004b3c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004b08:	0000f797          	auipc	a5,0xf
    80004b0c:	2987b783          	ld	a5,664(a5) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004b10:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004b14:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004b18:	00000713          	li	a4,0
    while(curr != 0)
    80004b1c:	00078c63          	beqz	a5,80004b34 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004b20:	00f56863          	bltu	a0,a5,80004b30 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004b24:	00078713          	mv	a4,a5
        curr = curr->next;
    80004b28:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004b2c:	ff1ff06f          	j	80004b1c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004b30:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004b34:	00070a63          	beqz	a4,80004b48 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004b38:	00a73423          	sd	a0,8(a4)
}
    80004b3c:	00813403          	ld	s0,8(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret
        headAllocated = newAllocated;
    80004b48:	0000f797          	auipc	a5,0xf
    80004b4c:	24a7bc23          	sd	a0,600(a5) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    80004b50:	fedff06f          	j	80004b3c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004b54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004b54:	0000f797          	auipc	a5,0xf
    80004b58:	2447a783          	lw	a5,580(a5) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004b5c:	0e078e63          	beqz	a5,80004c58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004b60:	fe010113          	addi	sp,sp,-32
    80004b64:	00113c23          	sd	ra,24(sp)
    80004b68:	00813823          	sd	s0,16(sp)
    80004b6c:	00913423          	sd	s1,8(sp)
    80004b70:	02010413          	addi	s0,sp,32
    80004b74:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004b78:	0000f497          	auipc	s1,0xf
    80004b7c:	2304b483          	ld	s1,560(s1) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004b80:	00000713          	li	a4,0
    while(curr != 0)
    80004b84:	0a048e63          	beqz	s1,80004c40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004b88:	0004b783          	ld	a5,0(s1)
    80004b8c:	00b7f863          	bgeu	a5,a1,80004b9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004b90:	00048713          	mv	a4,s1
        curr = curr->next;
    80004b94:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004b98:	fedff06f          	j	80004b84 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004b9c:	01058693          	addi	a3,a1,16
    80004ba0:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004ba4:	01078613          	addi	a2,a5,16
    80004ba8:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004bac:	00007517          	auipc	a0,0x7
    80004bb0:	0dc53503          	ld	a0,220(a0) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004bb4:	00053503          	ld	a0,0(a0)
    80004bb8:	06d56063          	bltu	a0,a3,80004c18 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004bbc:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004bc0:	01000813          	li	a6,16
    80004bc4:	02a87663          	bgeu	a6,a0,80004bf0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004bc8:	0084b783          	ld	a5,8(s1)
    80004bcc:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004bd0:	ff050513          	addi	a0,a0,-16
    80004bd4:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004bd8:	00070663          	beqz	a4,80004be4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004bdc:	00d73423          	sd	a3,8(a4)
    80004be0:	0400006f          	j	80004c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004be4:	0000f797          	auipc	a5,0xf
    80004be8:	1cd7b223          	sd	a3,452(a5) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
    80004bec:	0340006f          	j	80004c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004bf0:	00070a63          	beqz	a4,80004c04 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004bf4:	0084b683          	ld	a3,8(s1)
    80004bf8:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004bfc:	00078593          	mv	a1,a5
    80004c00:	0200006f          	j	80004c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004c04:	0084b703          	ld	a4,8(s1)
    80004c08:	0000f697          	auipc	a3,0xf
    80004c0c:	1ae6b023          	sd	a4,416(a3) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004c10:	00078593          	mv	a1,a5
    80004c14:	00c0006f          	j	80004c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004c18:	00070e63          	beqz	a4,80004c34 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004c1c:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004c20:	00048513          	mv	a0,s1
    80004c24:	00000097          	auipc	ra,0x0
    80004c28:	e5c080e7          	jalr	-420(ra) # 80004a80 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004c2c:	01048513          	addi	a0,s1,16
            break;
    80004c30:	0140006f          	j	80004c44 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004c34:	0000f797          	auipc	a5,0xf
    80004c38:	1607ba23          	sd	zero,372(a5) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
    80004c3c:	fe5ff06f          	j	80004c20 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004c40:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004c44:	01813083          	ld	ra,24(sp)
    80004c48:	01013403          	ld	s0,16(sp)
    80004c4c:	00813483          	ld	s1,8(sp)
    80004c50:	02010113          	addi	sp,sp,32
    80004c54:	00008067          	ret
        return nullptr;
    80004c58:	00000513          	li	a0,0
}
    80004c5c:	00008067          	ret

0000000080004c60 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004c60:	ff010113          	addi	sp,sp,-16
    80004c64:	00113423          	sd	ra,8(sp)
    80004c68:	00813023          	sd	s0,0(sp)
    80004c6c:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	ee4080e7          	jalr	-284(ra) # 80004b54 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004c78:	00813083          	ld	ra,8(sp)
    80004c7c:	00013403          	ld	s0,0(sp)
    80004c80:	01010113          	addi	sp,sp,16
    80004c84:	00008067          	ret

0000000080004c88 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004c88:	ff010113          	addi	sp,sp,-16
    80004c8c:	00813423          	sd	s0,8(sp)
    80004c90:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004c94:	0000f797          	auipc	a5,0xf
    80004c98:	1047a783          	lw	a5,260(a5) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004c9c:	06078263          	beqz	a5,80004d00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ca0:	0000f797          	auipc	a5,0xf
    80004ca4:	1087b783          	ld	a5,264(a5) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004ca8:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004cac:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004cb0:	00000713          	li	a4,0
    while(curr != 0)
    80004cb4:	00078c63          	beqz	a5,80004ccc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004cb8:	00f56863          	bltu	a0,a5,80004cc8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004cbc:	00078713          	mv	a4,a5
        curr = curr->next;
    80004cc0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004cc4:	ff1ff06f          	j	80004cb4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004cc8:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004ccc:	04070063          	beqz	a4,80004d0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004cd0:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004cd4:	00853783          	ld	a5,8(a0)
    80004cd8:	00078a63          	beqz	a5,80004cec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004cdc:	00053603          	ld	a2,0(a0)
    80004ce0:	01060693          	addi	a3,a2,16
    80004ce4:	00d506b3          	add	a3,a0,a3
    80004ce8:	02d78863          	beq	a5,a3,80004d18 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004cec:	00070a63          	beqz	a4,80004d00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004cf0:	00073683          	ld	a3,0(a4)
    80004cf4:	01068793          	addi	a5,a3,16
    80004cf8:	00f707b3          	add	a5,a4,a5
    80004cfc:	02a78c63          	beq	a5,a0,80004d34 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004d00:	00813403          	ld	s0,8(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret
        headFree = newSegment;
    80004d0c:	0000f797          	auipc	a5,0xf
    80004d10:	08a7be23          	sd	a0,156(a5) # 80013da8 <_ZN15MemoryAllocator8headFreeE>
    80004d14:	fc1ff06f          	j	80004cd4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004d18:	0007b683          	ld	a3,0(a5)
    80004d1c:	00d60633          	add	a2,a2,a3
    80004d20:	01060613          	addi	a2,a2,16
    80004d24:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004d28:	0087b783          	ld	a5,8(a5)
    80004d2c:	00f53423          	sd	a5,8(a0)
    80004d30:	fbdff06f          	j	80004cec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004d34:	00053783          	ld	a5,0(a0)
    80004d38:	00f686b3          	add	a3,a3,a5
    80004d3c:	01068693          	addi	a3,a3,16
    80004d40:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004d44:	00853783          	ld	a5,8(a0)
    80004d48:	00f73423          	sd	a5,8(a4)
    80004d4c:	fb5ff06f          	j	80004d00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004d50 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004d50:	0000f797          	auipc	a5,0xf
    80004d54:	0487a783          	lw	a5,72(a5) # 80013d98 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004d58:	08078263          	beqz	a5,80004ddc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004d70:	0000f497          	auipc	s1,0xf
    80004d74:	0304b483          	ld	s1,48(s1) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004d78:	00000713          	li	a4,0
    while(curr != 0)
    80004d7c:	02048a63          	beqz	s1,80004db0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004d80:	01048793          	addi	a5,s1,16
    80004d84:	00a78863          	beq	a5,a0,80004d94 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004d88:	00048713          	mv	a4,s1
        curr = curr->next;
    80004d8c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004d90:	fedff06f          	j	80004d7c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004d94:	02070c63          	beqz	a4,80004dcc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004d98:	0084b783          	ld	a5,8(s1)
    80004d9c:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004da0:	0004b583          	ld	a1,0(s1)
    80004da4:	00048513          	mv	a0,s1
    80004da8:	00000097          	auipc	ra,0x0
    80004dac:	ee0080e7          	jalr	-288(ra) # 80004c88 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004db0:	02048a63          	beqz	s1,80004de4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004db4:	00000513          	li	a0,0
    else
        return 1;
}
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	02010113          	addi	sp,sp,32
    80004dc8:	00008067          	ret
                headAllocated = curr->next;
    80004dcc:	0084b783          	ld	a5,8(s1)
    80004dd0:	0000f717          	auipc	a4,0xf
    80004dd4:	fcf73823          	sd	a5,-48(a4) # 80013da0 <_ZN15MemoryAllocator13headAllocatedE>
    80004dd8:	fc9ff06f          	j	80004da0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004ddc:	00100513          	li	a0,1
}
    80004de0:	00008067          	ret
        return 1;
    80004de4:	00100513          	li	a0,1
    80004de8:	fd1ff06f          	j	80004db8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004dec <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004dec:	ff010113          	addi	sp,sp,-16
    80004df0:	00113423          	sd	ra,8(sp)
    80004df4:	00813023          	sd	s0,0(sp)
    80004df8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004dfc:	00000097          	auipc	ra,0x0
    80004e00:	f54080e7          	jalr	-172(ra) # 80004d50 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004e04:	00813083          	ld	ra,8(sp)
    80004e08:	00013403          	ld	s0,0(sp)
    80004e0c:	01010113          	addi	sp,sp,16
    80004e10:	00008067          	ret

0000000080004e14 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004e14:	ff010113          	addi	sp,sp,-16
    80004e18:	00113423          	sd	ra,8(sp)
    80004e1c:	00813023          	sd	s0,0(sp)
    80004e20:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	e3c080e7          	jalr	-452(ra) # 80004c60 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004e2c:	00813083          	ld	ra,8(sp)
    80004e30:	00013403          	ld	s0,0(sp)
    80004e34:	01010113          	addi	sp,sp,16
    80004e38:	00008067          	ret

0000000080004e3c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004e3c:	ff010113          	addi	sp,sp,-16
    80004e40:	00113423          	sd	ra,8(sp)
    80004e44:	00813023          	sd	s0,0(sp)
    80004e48:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004e4c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004e50:	00651513          	slli	a0,a0,0x6
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	fc0080e7          	jalr	-64(ra) # 80004e14 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004e5c:	02050063          	beqz	a0,80004e7c <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004e60:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	8ac080e7          	jalr	-1876(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004e6c:	00813083          	ld	ra,8(sp)
    80004e70:	00013403          	ld	s0,0(sp)
    80004e74:	01010113          	addi	sp,sp,16
    80004e78:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004e7c:	00000513          	li	a0,0
    80004e80:	fe5ff06f          	j	80004e64 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004e84 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004e84:	ff010113          	addi	sp,sp,-16
    80004e88:	00113423          	sd	ra,8(sp)
    80004e8c:	00813023          	sd	s0,0(sp)
    80004e90:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004e94:	00000097          	auipc	ra,0x0
    80004e98:	f58080e7          	jalr	-168(ra) # 80004dec <_ZN15MemoryAllocator8mem_freeEPv>
    80004e9c:	00813083          	ld	ra,8(sp)
    80004ea0:	00013403          	ld	s0,0(sp)
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret

0000000080004eac <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004eac:	ff010113          	addi	sp,sp,-16
    80004eb0:	00113423          	sd	ra,8(sp)
    80004eb4:	00813023          	sd	s0,0(sp)
    80004eb8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004ebc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	fc4080e7          	jalr	-60(ra) # 80004e84 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004ec8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	844080e7          	jalr	-1980(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004ed4:	00813083          	ld	ra,8(sp)
    80004ed8:	00013403          	ld	s0,0(sp)
    80004edc:	01010113          	addi	sp,sp,16
    80004ee0:	00008067          	ret

0000000080004ee4 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"
#include "../h/KConsole.hpp"

void slabInitTest()
{
    80004ee4:	ff010113          	addi	sp,sp,-16
    80004ee8:	00113423          	sd	ra,8(sp)
    80004eec:	00813023          	sd	s0,0(sp)
    80004ef0:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004ef4:	00f00593          	li	a1,15
    80004ef8:	00007797          	auipc	a5,0x7
    80004efc:	d307b783          	ld	a5,-720(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f00:	0007b503          	ld	a0,0(a5)
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	c80080e7          	jalr	-896(ra) # 80001b84 <_Z9kmem_initPvi>
}
    80004f0c:	00813083          	ld	ra,8(sp)
    80004f10:	00013403          	ld	s0,0(sp)
    80004f14:	01010113          	addi	sp,sp,16
    80004f18:	00008067          	ret

0000000080004f1c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004f1c:	fe010113          	addi	sp,sp,-32
    80004f20:	00113c23          	sd	ra,24(sp)
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	01213023          	sd	s2,0(sp)
    80004f30:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f34:	00f00593          	li	a1,15
    80004f38:	00007797          	auipc	a5,0x7
    80004f3c:	cf07b783          	ld	a5,-784(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f40:	0007b503          	ld	a0,0(a5)
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	c40080e7          	jalr	-960(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004f4c:	00000693          	li	a3,0
    80004f50:	00000613          	li	a2,0
    80004f54:	00a00593          	li	a1,10
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	57050513          	addi	a0,a0,1392 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	d94080e7          	jalr	-620(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004f68:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004f6c:	00000693          	li	a3,0
    80004f70:	00000613          	li	a2,0
    80004f74:	00a00593          	li	a1,10
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	56050513          	addi	a0,a0,1376 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	d74080e7          	jalr	-652(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004f88:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004f8c:	00000693          	li	a3,0
    80004f90:	00000613          	li	a2,0
    80004f94:	00a00593          	li	a1,10
    80004f98:	00004517          	auipc	a0,0x4
    80004f9c:	55050513          	addi	a0,a0,1360 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	d54080e7          	jalr	-684(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004fa8:	00048a63          	beqz	s1,80004fbc <_Z19slabCacheCreateTestv+0xa0>
    80004fac:	00090863          	beqz	s2,80004fbc <_Z19slabCacheCreateTestv+0xa0>
    80004fb0:	00050663          	beqz	a0,80004fbc <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	f90080e7          	jalr	-112(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    80004fbc:	01813083          	ld	ra,24(sp)
    80004fc0:	01013403          	ld	s0,16(sp)
    80004fc4:	00813483          	ld	s1,8(sp)
    80004fc8:	00013903          	ld	s2,0(sp)
    80004fcc:	02010113          	addi	sp,sp,32
    80004fd0:	00008067          	ret

0000000080004fd4 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004fd4:	fe010113          	addi	sp,sp,-32
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00813823          	sd	s0,16(sp)
    80004fe0:	00913423          	sd	s1,8(sp)
    80004fe4:	01213023          	sd	s2,0(sp)
    80004fe8:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004fec:	00f00593          	li	a1,15
    80004ff0:	00007797          	auipc	a5,0x7
    80004ff4:	c387b783          	ld	a5,-968(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004ff8:	0007b503          	ld	a0,0(a5)
    80004ffc:	ffffd097          	auipc	ra,0xffffd
    80005000:	b88080e7          	jalr	-1144(ra) # 80001b84 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80005004:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80005008:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    8000500c:	04400793          	li	a5,68
    80005010:	0297c663          	blt	a5,s1,8000503c <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80005014:	00000693          	li	a3,0
    80005018:	00000613          	li	a2,0
    8000501c:	00a00593          	li	a1,10
    80005020:	00004517          	auipc	a0,0x4
    80005024:	4a850513          	addi	a0,a0,1192 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	ccc080e7          	jalr	-820(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005030:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80005034:	0014849b          	addiw	s1,s1,1
    80005038:	fd5ff06f          	j	8000500c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	f08080e7          	jalr	-248(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80005044:	00090513          	mv	a0,s2
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	184080e7          	jalr	388(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	ef4080e7          	jalr	-268(ra) # 80001f44 <_Z22printSlabAllocatorInfov>
}
    80005058:	01813083          	ld	ra,24(sp)
    8000505c:	01013403          	ld	s0,16(sp)
    80005060:	00813483          	ld	s1,8(sp)
    80005064:	00013903          	ld	s2,0(sp)
    80005068:	02010113          	addi	sp,sp,32
    8000506c:	00008067          	ret

0000000080005070 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80005070:	ff010113          	addi	sp,sp,-16
    80005074:	00813423          	sd	s0,8(sp)
    80005078:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    8000507c:	00000793          	li	a5,0
    80005080:	00b7da63          	bge	a5,a1,80005094 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80005084:	00f50733          	add	a4,a0,a5
    80005088:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    8000508c:	0017879b          	addiw	a5,a5,1
    80005090:	ff1ff06f          	j	80005080 <_Z6memsetPKvii+0x10>
    }
}
    80005094:	00813403          	ld	s0,8(sp)
    80005098:	01010113          	addi	sp,sp,16
    8000509c:	00008067          	ret

00000000800050a0 <_Z9constructPv>:

void construct(void *data) {
    800050a0:	ff010113          	addi	sp,sp,-16
    800050a4:	00113423          	sd	ra,8(sp)
    800050a8:	00813023          	sd	s0,0(sp)
    800050ac:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    800050b0:	0a500613          	li	a2,165
    800050b4:	00700593          	li	a1,7
    800050b8:	00000097          	auipc	ra,0x0
    800050bc:	fb8080e7          	jalr	-72(ra) # 80005070 <_Z6memsetPKvii>
}
    800050c0:	00813083          	ld	ra,8(sp)
    800050c4:	00013403          	ld	s0,0(sp)
    800050c8:	01010113          	addi	sp,sp,16
    800050cc:	00008067          	ret

00000000800050d0 <_Z5checkPvm>:

int check(void *data, size_t size) {
    800050d0:	ff010113          	addi	sp,sp,-16
    800050d4:	00813423          	sd	s0,8(sp)
    800050d8:	01010413          	addi	s0,sp,16
    800050dc:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    800050e0:	00000793          	li	a5,0
    int ret = 1;
    800050e4:	00100513          	li	a0,1
    800050e8:	0080006f          	j	800050f0 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    800050ec:	00178793          	addi	a5,a5,1
    800050f0:	00b7fe63          	bgeu	a5,a1,8000510c <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    800050f4:	00f60733          	add	a4,a2,a5
    800050f8:	00074683          	lbu	a3,0(a4)
    800050fc:	0a500713          	li	a4,165
    80005100:	fee686e3          	beq	a3,a4,800050ec <_Z5checkPvm+0x1c>
            ret = 0;
    80005104:	00000513          	li	a0,0
    80005108:	fe5ff06f          	j	800050ec <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    8000510c:	00813403          	ld	s0,8(sp)
    80005110:	01010113          	addi	sp,sp,16
    80005114:	00008067          	ret

0000000080005118 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80005118:	f8010113          	addi	sp,sp,-128
    8000511c:	06113c23          	sd	ra,120(sp)
    80005120:	06813823          	sd	s0,112(sp)
    80005124:	06913423          	sd	s1,104(sp)
    80005128:	07213023          	sd	s2,96(sp)
    8000512c:	05313c23          	sd	s3,88(sp)
    80005130:	05413823          	sd	s4,80(sp)
    80005134:	05513423          	sd	s5,72(sp)
    80005138:	05613023          	sd	s6,64(sp)
    8000513c:	03713c23          	sd	s7,56(sp)
    80005140:	03813823          	sd	s8,48(sp)
    80005144:	03913423          	sd	s9,40(sp)
    80005148:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    8000514c:	00053c03          	ld	s8,0(a0)
    80005150:	f9843423          	sd	s8,-120(s0)
    80005154:	00853783          	ld	a5,8(a0)
    80005158:	f8f43823          	sd	a5,-112(s0)
    8000515c:	01053783          	ld	a5,16(a0)
    80005160:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80005164:	000c079b          	sext.w	a5,s8
    80005168:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    8000516c:	00379713          	slli	a4,a5,0x3
    80005170:	00007797          	auipc	a5,0x7
    80005174:	a6078793          	addi	a5,a5,-1440 # 8000bbd0 <_ZL11CACHE_NAMES>
    80005178:	00e787b3          	add	a5,a5,a4
    8000517c:	000c0b13          	mv	s6,s8
    80005180:	00000693          	li	a3,0
    80005184:	00000613          	li	a2,0
    80005188:	000c0593          	mv	a1,s8
    8000518c:	0007b503          	ld	a0,0(a5)
    80005190:	ffffd097          	auipc	ra,0xffffd
    80005194:	b64080e7          	jalr	-1180(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005198:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    8000519c:	f9842b83          	lw	s7,-104(s0)
    800051a0:	004b9513          	slli	a0,s7,0x4
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	e9c080e7          	jalr	-356(ra) # 80002040 <_Z7kmallocm>
    800051ac:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    800051b0:	00000493          	li	s1,0
    int size = 0;
    800051b4:	00000993          	li	s3,0
    800051b8:	0380006f          	j	800051f0 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    800051bc:	00499913          	slli	s2,s3,0x4
    800051c0:	012a8933          	add	s2,s5,s2
    800051c4:	000a0513          	mv	a0,s4
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	9f4080e7          	jalr	-1548(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    800051d0:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    800051d4:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    800051d8:	0a500613          	li	a2,165
    800051dc:	000c0593          	mv	a1,s8
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	e90080e7          	jalr	-368(ra) # 80005070 <_Z6memsetPKvii>
        }
        size++;
    800051e8:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    800051ec:	0014849b          	addiw	s1,s1,1
    800051f0:	0574da63          	bge	s1,s7,80005244 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    800051f4:	06400793          	li	a5,100
    800051f8:	02f4e7bb          	remw	a5,s1,a5
    800051fc:	fc0790e3          	bnez	a5,800051bc <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005200:	f9043c83          	ld	s9,-112(s0)
    80005204:	00499913          	slli	s2,s3,0x4
    80005208:	012a8933          	add	s2,s5,s2
    8000520c:	000c8513          	mv	a0,s9
    80005210:	ffffd097          	auipc	ra,0xffffd
    80005214:	9ac080e7          	jalr	-1620(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    80005218:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    8000521c:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005220:	00700593          	li	a1,7
    80005224:	00000097          	auipc	ra,0x0
    80005228:	eac080e7          	jalr	-340(ra) # 800050d0 <_Z5checkPvm>
    8000522c:	fa051ee3          	bnez	a0,800051e8 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80005230:	00004517          	auipc	a0,0x4
    80005234:	2c850513          	addi	a0,a0,712 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005238:	ffffe097          	auipc	ra,0xffffe
    8000523c:	538080e7          	jalr	1336(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
    80005240:	fa9ff06f          	j	800051e8 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80005244:	000a0513          	mv	a0,s4
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	ba0080e7          	jalr	-1120(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80005250:	f9043503          	ld	a0,-112(s0)
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	b94080e7          	jalr	-1132(ra) # 80001de8 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    8000525c:	00000913          	li	s2,0
    80005260:	0300006f          	j	80005290 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005264:	000b0593          	mv	a1,s6
    80005268:	0440006f          	j	800052ac <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    8000526c:	00004517          	auipc	a0,0x4
    80005270:	28c50513          	addi	a0,a0,652 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	4fc080e7          	jalr	1276(ra) # 80003770 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    8000527c:	0084b583          	ld	a1,8(s1)
    80005280:	0004b503          	ld	a0,0(s1)
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	b14080e7          	jalr	-1260(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    8000528c:	0019091b          	addiw	s2,s2,1
    80005290:	03395663          	bge	s2,s3,800052bc <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005294:	00491493          	slli	s1,s2,0x4
    80005298:	009a84b3          	add	s1,s5,s1
    8000529c:	0084b503          	ld	a0,8(s1)
    800052a0:	0004b783          	ld	a5,0(s1)
    800052a4:	fd4780e3          	beq	a5,s4,80005264 <_Z4workPv+0x14c>
    800052a8:	00700593          	li	a1,7
    800052ac:	00000097          	auipc	ra,0x0
    800052b0:	e24080e7          	jalr	-476(ra) # 800050d0 <_Z5checkPvm>
    800052b4:	fc0514e3          	bnez	a0,8000527c <_Z4workPv+0x164>
    800052b8:	fb5ff06f          	j	8000526c <_Z4workPv+0x154>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    800052bc:	000a8513          	mv	a0,s5
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	e84080e7          	jalr	-380(ra) # 80002144 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    800052c8:	000a0513          	mv	a0,s4
    800052cc:	ffffd097          	auipc	ra,0xffffd
    800052d0:	f00080e7          	jalr	-256(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    800052d4:	07813083          	ld	ra,120(sp)
    800052d8:	07013403          	ld	s0,112(sp)
    800052dc:	06813483          	ld	s1,104(sp)
    800052e0:	06013903          	ld	s2,96(sp)
    800052e4:	05813983          	ld	s3,88(sp)
    800052e8:	05013a03          	ld	s4,80(sp)
    800052ec:	04813a83          	ld	s5,72(sp)
    800052f0:	04013b03          	ld	s6,64(sp)
    800052f4:	03813b83          	ld	s7,56(sp)
    800052f8:	03013c03          	ld	s8,48(sp)
    800052fc:	02813c83          	ld	s9,40(sp)
    80005300:	08010113          	addi	sp,sp,128
    80005304:	00008067          	ret

0000000080005308 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80005308:	fb010113          	addi	sp,sp,-80
    8000530c:	04113423          	sd	ra,72(sp)
    80005310:	04813023          	sd	s0,64(sp)
    80005314:	02913c23          	sd	s1,56(sp)
    80005318:	03213823          	sd	s2,48(sp)
    8000531c:	03313423          	sd	s3,40(sp)
    80005320:	05010413          	addi	s0,sp,80
    80005324:	00050993          	mv	s3,a0
    80005328:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    8000532c:	00000493          	li	s1,0
    80005330:	00400793          	li	a5,4
    80005334:	0297c863          	blt	a5,s1,80005364 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80005338:	00093783          	ld	a5,0(s2)
    8000533c:	faf43c23          	sd	a5,-72(s0)
    80005340:	00893783          	ld	a5,8(s2)
    80005344:	fcf43023          	sd	a5,-64(s0)
    80005348:	01093783          	ld	a5,16(s2)
    8000534c:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80005350:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80005354:	fb840513          	addi	a0,s0,-72
    80005358:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    8000535c:	0014849b          	addiw	s1,s1,1
    80005360:	fd1ff06f          	j	80005330 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80005364:	04813083          	ld	ra,72(sp)
    80005368:	04013403          	ld	s0,64(sp)
    8000536c:	03813483          	ld	s1,56(sp)
    80005370:	03013903          	ld	s2,48(sp)
    80005374:	02813983          	ld	s3,40(sp)
    80005378:	05010113          	addi	sp,sp,80
    8000537c:	00008067          	ret

0000000080005380 <_Z7testOS2v>:

void testOS2()
{
    80005380:	fc010113          	addi	sp,sp,-64
    80005384:	02113c23          	sd	ra,56(sp)
    80005388:	02813823          	sd	s0,48(sp)
    8000538c:	02913423          	sd	s1,40(sp)
    80005390:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80005394:	00000693          	li	a3,0
    80005398:	00000617          	auipc	a2,0x0
    8000539c:	d0860613          	addi	a2,a2,-760 # 800050a0 <_Z9constructPv>
    800053a0:	00700593          	li	a1,7
    800053a4:	00004517          	auipc	a0,0x4
    800053a8:	16c50513          	addi	a0,a0,364 # 80009510 <CONSOLE_STATUS+0x500>
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	948080e7          	jalr	-1720(ra) # 80001cf4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800053b4:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    800053b8:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    800053bc:	3e800793          	li	a5,1000
    800053c0:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    800053c4:	00500613          	li	a2,5
    800053c8:	fc840593          	addi	a1,s0,-56
    800053cc:	00000517          	auipc	a0,0x0
    800053d0:	d4c50513          	addi	a0,a0,-692 # 80005118 <_Z4workPv>
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	f34080e7          	jalr	-204(ra) # 80005308 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    800053dc:	00048513          	mv	a0,s1
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	dec080e7          	jalr	-532(ra) # 800021cc <_Z18kmem_cache_destroyP12kmem_cache_s>
    800053e8:	03813083          	ld	ra,56(sp)
    800053ec:	03013403          	ld	s0,48(sp)
    800053f0:	02813483          	ld	s1,40(sp)
    800053f4:	04010113          	addi	sp,sp,64
    800053f8:	00008067          	ret

00000000800053fc <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800053fc:	ff010113          	addi	sp,sp,-16
    80005400:	00813423          	sd	s0,8(sp)
    80005404:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005408:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000540c:	00053423          	sd	zero,8(a0)
    80005410:	00053023          	sd	zero,0(a0)
}
    80005414:	00813403          	ld	s0,8(sp)
    80005418:	01010113          	addi	sp,sp,16
    8000541c:	00008067          	ret

0000000080005420 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005420:	ff010113          	addi	sp,sp,-16
    80005424:	00813423          	sd	s0,8(sp)
    80005428:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000542c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80005430:	00053783          	ld	a5,0(a0)
    80005434:	00078e63          	beqz	a5,80005450 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80005438:	00853783          	ld	a5,8(a0)
    8000543c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80005440:	00b53423          	sd	a1,8(a0)
    }
}
    80005444:	00813403          	ld	s0,8(sp)
    80005448:	01010113          	addi	sp,sp,16
    8000544c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80005450:	00b53423          	sd	a1,8(a0)
    80005454:	00b53023          	sd	a1,0(a0)
    80005458:	fedff06f          	j	80005444 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000545c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000545c:	ff010113          	addi	sp,sp,-16
    80005460:	00113423          	sd	ra,8(sp)
    80005464:	00813023          	sd	s0,0(sp)
    80005468:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    8000546c:	00007797          	auipc	a5,0x7
    80005470:	8147b783          	ld	a5,-2028(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005474:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80005478:	00200793          	li	a5,2
    8000547c:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80005480:	00000097          	auipc	ra,0x0
    80005484:	fa0080e7          	jalr	-96(ra) # 80005420 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005488:	ffffd097          	auipc	ra,0xffffd
    8000548c:	21c080e7          	jalr	540(ra) # 800026a4 <_ZN3PCB8dispatchEv>
}
    80005490:	00813083          	ld	ra,8(sp)
    80005494:	00013403          	ld	s0,0(sp)
    80005498:	01010113          	addi	sp,sp,16
    8000549c:	00008067          	ret

00000000800054a0 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800054a0:	00006797          	auipc	a5,0x6
    800054a4:	7e07b783          	ld	a5,2016(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    800054a8:	0007b783          	ld	a5,0(a5)
    800054ac:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800054b0:	01052783          	lw	a5,16(a0)
    800054b4:	fff7879b          	addiw	a5,a5,-1
    800054b8:	00f52823          	sw	a5,16(a0)
    800054bc:	02079713          	slli	a4,a5,0x20
    800054c0:	00074663          	bltz	a4,800054cc <_ZN10KSemaphore4waitEv+0x2c>
}
    800054c4:	00000513          	li	a0,0
    800054c8:	00008067          	ret
{
    800054cc:	ff010113          	addi	sp,sp,-16
    800054d0:	00113423          	sd	ra,8(sp)
    800054d4:	00813023          	sd	s0,0(sp)
    800054d8:	01010413          	addi	s0,sp,16
        block();
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	f80080e7          	jalr	-128(ra) # 8000545c <_ZN10KSemaphore5blockEv>
}
    800054e4:	00000513          	li	a0,0
    800054e8:	00813083          	ld	ra,8(sp)
    800054ec:	00013403          	ld	s0,0(sp)
    800054f0:	01010113          	addi	sp,sp,16
    800054f4:	00008067          	ret

00000000800054f8 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800054f8:	ff010113          	addi	sp,sp,-16
    800054fc:	00813423          	sd	s0,8(sp)
    80005500:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005504:	00053503          	ld	a0,0(a0)
    80005508:	00813403          	ld	s0,8(sp)
    8000550c:	01010113          	addi	sp,sp,16
    80005510:	00008067          	ret

0000000080005514 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005514:	ff010113          	addi	sp,sp,-16
    80005518:	00813423          	sd	s0,8(sp)
    8000551c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005520:	00053783          	ld	a5,0(a0)
    80005524:	00078c63          	beqz	a5,8000553c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80005528:	0087b703          	ld	a4,8(a5)
    8000552c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005530:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005534:	00053783          	ld	a5,0(a0)
    80005538:	00078863          	beqz	a5,80005548 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000553c:	00813403          	ld	s0,8(sp)
    80005540:	01010113          	addi	sp,sp,16
    80005544:	00008067          	ret
        tailBlocked =0;
    80005548:	00053423          	sd	zero,8(a0)
    8000554c:	ff1ff06f          	j	8000553c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005550 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005550:	fe010113          	addi	sp,sp,-32
    80005554:	00113c23          	sd	ra,24(sp)
    80005558:	00813823          	sd	s0,16(sp)
    8000555c:	00913423          	sd	s1,8(sp)
    80005560:	01213023          	sd	s2,0(sp)
    80005564:	02010413          	addi	s0,sp,32
    80005568:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    8000556c:	00090513          	mv	a0,s2
    80005570:	00000097          	auipc	ra,0x0
    80005574:	f88080e7          	jalr	-120(ra) # 800054f8 <_ZN10KSemaphore15getFirstBlockedEv>
    80005578:	00050493          	mv	s1,a0
    8000557c:	02050463          	beqz	a0,800055a4 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80005580:	00090513          	mv	a0,s2
    80005584:	00000097          	auipc	ra,0x0
    80005588:	f90080e7          	jalr	-112(ra) # 80005514 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    8000558c:	00100793          	li	a5,1
    80005590:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005594:	00048513          	mv	a0,s1
    80005598:	ffffe097          	auipc	ra,0xffffe
    8000559c:	490080e7          	jalr	1168(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800055a0:	fcdff06f          	j	8000556c <_ZN10KSemaphoreD1Ev+0x1c>
}
    800055a4:	01813083          	ld	ra,24(sp)
    800055a8:	01013403          	ld	s0,16(sp)
    800055ac:	00813483          	ld	s1,8(sp)
    800055b0:	00013903          	ld	s2,0(sp)
    800055b4:	02010113          	addi	sp,sp,32
    800055b8:	00008067          	ret

00000000800055bc <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00113c23          	sd	ra,24(sp)
    800055c4:	00813823          	sd	s0,16(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	01213023          	sd	s2,0(sp)
    800055d0:	02010413          	addi	s0,sp,32
    800055d4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	f20080e7          	jalr	-224(ra) # 800054f8 <_ZN10KSemaphore15getFirstBlockedEv>
    800055e0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800055e4:	00090513          	mv	a0,s2
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	f2c080e7          	jalr	-212(ra) # 80005514 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800055f0:	00048863          	beqz	s1,80005600 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800055f4:	00048513          	mv	a0,s1
    800055f8:	ffffe097          	auipc	ra,0xffffe
    800055fc:	430080e7          	jalr	1072(ra) # 80003a28 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005600:	01813083          	ld	ra,24(sp)
    80005604:	01013403          	ld	s0,16(sp)
    80005608:	00813483          	ld	s1,8(sp)
    8000560c:	00013903          	ld	s2,0(sp)
    80005610:	02010113          	addi	sp,sp,32
    80005614:	00008067          	ret

0000000080005618 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005618:	01052783          	lw	a5,16(a0)
    8000561c:	0017879b          	addiw	a5,a5,1
    80005620:	0007871b          	sext.w	a4,a5
    80005624:	00f52823          	sw	a5,16(a0)
    80005628:	00e05663          	blez	a4,80005634 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000562c:	00000513          	li	a0,0
    80005630:	00008067          	ret
uint64 KSemaphore::signal() {
    80005634:	ff010113          	addi	sp,sp,-16
    80005638:	00113423          	sd	ra,8(sp)
    8000563c:	00813023          	sd	s0,0(sp)
    80005640:	01010413          	addi	s0,sp,16
        unblock();
    80005644:	00000097          	auipc	ra,0x0
    80005648:	f78080e7          	jalr	-136(ra) # 800055bc <_ZN10KSemaphore7unblockEv>
}
    8000564c:	00000513          	li	a0,0
    80005650:	00813083          	ld	ra,8(sp)
    80005654:	00013403          	ld	s0,0(sp)
    80005658:	01010113          	addi	sp,sp,16
    8000565c:	00008067          	ret

0000000080005660 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005660:	ff010113          	addi	sp,sp,-16
    80005664:	00113423          	sd	ra,8(sp)
    80005668:	00813023          	sd	s0,0(sp)
    8000566c:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005670:	00006797          	auipc	a5,0x6
    80005674:	5c07b783          	ld	a5,1472(a5) # 8000bc30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005678:	0007b503          	ld	a0,0(a5)
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	540080e7          	jalr	1344(ra) # 80001bbc <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005684:	00813083          	ld	ra,8(sp)
    80005688:	00013403          	ld	s0,0(sp)
    8000568c:	01010113          	addi	sp,sp,16
    80005690:	00008067          	ret

0000000080005694 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005694:	fd010113          	addi	sp,sp,-48
    80005698:	02113423          	sd	ra,40(sp)
    8000569c:	02813023          	sd	s0,32(sp)
    800056a0:	00913c23          	sd	s1,24(sp)
    800056a4:	01213823          	sd	s2,16(sp)
    800056a8:	01313423          	sd	s3,8(sp)
    800056ac:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800056b0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800056b4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800056b8:	01800513          	li	a0,24
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	fa4080e7          	jalr	-92(ra) # 80005660 <_ZN10KSemaphorenwEm>
    800056c4:	00050493          	mv	s1,a0
    800056c8:	0009859b          	sext.w	a1,s3
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	d30080e7          	jalr	-720(ra) # 800053fc <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800056d4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800056d8:	02048663          	beqz	s1,80005704 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    800056dc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800056e0:	fffff097          	auipc	ra,0xfffff
    800056e4:	030080e7          	jalr	48(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    800056e8:	02813083          	ld	ra,40(sp)
    800056ec:	02013403          	ld	s0,32(sp)
    800056f0:	01813483          	ld	s1,24(sp)
    800056f4:	01013903          	ld	s2,16(sp)
    800056f8:	00813983          	ld	s3,8(sp)
    800056fc:	03010113          	addi	sp,sp,48
    80005700:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005704:	fff00513          	li	a0,-1
    80005708:	fd9ff06f          	j	800056e0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

000000008000570c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000570c:	ff010113          	addi	sp,sp,-16
    80005710:	00113423          	sd	ra,8(sp)
    80005714:	00813023          	sd	s0,0(sp)
    80005718:	01010413          	addi	s0,sp,16
    8000571c:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005720:	00006797          	auipc	a5,0x6
    80005724:	5107b783          	ld	a5,1296(a5) # 8000bc30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005728:	0007b503          	ld	a0,0(a5)
    8000572c:	ffffc097          	auipc	ra,0xffffc
    80005730:	66c080e7          	jalr	1644(ra) # 80001d98 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80005734:	00813083          	ld	ra,8(sp)
    80005738:	00013403          	ld	s0,0(sp)
    8000573c:	01010113          	addi	sp,sp,16
    80005740:	00008067          	ret

0000000080005744 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005744:	ff010113          	addi	sp,sp,-16
    80005748:	00113423          	sd	ra,8(sp)
    8000574c:	00813023          	sd	s0,0(sp)
    80005750:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005754:	00058513          	mv	a0,a1
    kSem->wait();
    80005758:	00000097          	auipc	ra,0x0
    8000575c:	d48080e7          	jalr	-696(ra) # 800054a0 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005760:	00006797          	auipc	a5,0x6
    80005764:	5207b783          	ld	a5,1312(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x70>
    80005768:	0007b783          	ld	a5,0(a5)
    8000576c:	0587c783          	lbu	a5,88(a5)
    80005770:	02078063          	beqz	a5,80005790 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005774:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005778:	fffff097          	auipc	ra,0xfffff
    8000577c:	f98080e7          	jalr	-104(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005780:	00813083          	ld	ra,8(sp)
    80005784:	00013403          	ld	s0,0(sp)
    80005788:	01010113          	addi	sp,sp,16
    8000578c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005790:	00000513          	li	a0,0
    80005794:	fe5ff06f          	j	80005778 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005798 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005798:	ff010113          	addi	sp,sp,-16
    8000579c:	00113423          	sd	ra,8(sp)
    800057a0:	00813023          	sd	s0,0(sp)
    800057a4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800057a8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800057ac:	02050463          	beqz	a0,800057d4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	e68080e7          	jalr	-408(ra) # 80005618 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800057b8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800057bc:	fffff097          	auipc	ra,0xfffff
    800057c0:	f54080e7          	jalr	-172(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    800057c4:	00813083          	ld	ra,8(sp)
    800057c8:	00013403          	ld	s0,0(sp)
    800057cc:	01010113          	addi	sp,sp,16
    800057d0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800057d4:	00100513          	li	a0,1
    800057d8:	fe5ff06f          	j	800057bc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800057dc <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800057dc:	fe010113          	addi	sp,sp,-32
    800057e0:	00113c23          	sd	ra,24(sp)
    800057e4:	00813823          	sd	s0,16(sp)
    800057e8:	00913423          	sd	s1,8(sp)
    800057ec:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800057f0:	00058493          	mv	s1,a1
    delete kSem;
    800057f4:	00048e63          	beqz	s1,80005810 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	d54080e7          	jalr	-684(ra) # 80005550 <_ZN10KSemaphoreD1Ev>
    80005804:	00048513          	mv	a0,s1
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	f04080e7          	jalr	-252(ra) # 8000570c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005810:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005814:	fffff097          	auipc	ra,0xfffff
    80005818:	efc080e7          	jalr	-260(ra) # 80004710 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000581c:	01813083          	ld	ra,24(sp)
    80005820:	01013403          	ld	s0,16(sp)
    80005824:	00813483          	ld	s1,8(sp)
    80005828:	02010113          	addi	sp,sp,32
    8000582c:	00008067          	ret

0000000080005830 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005830:	fe010113          	addi	sp,sp,-32
    80005834:	00113c23          	sd	ra,24(sp)
    80005838:	00813823          	sd	s0,16(sp)
    8000583c:	00913423          	sd	s1,8(sp)
    80005840:	02010413          	addi	s0,sp,32
    80005844:	00050493          	mv	s1,a0
    LOCK();
    80005848:	00100613          	li	a2,1
    8000584c:	00000593          	li	a1,0
    80005850:	0000e517          	auipc	a0,0xe
    80005854:	56050513          	addi	a0,a0,1376 # 80013db0 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	9c0080e7          	jalr	-1600(ra) # 80001218 <copy_and_swap>
    80005860:	fe0514e3          	bnez	a0,80005848 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005864:	0004c503          	lbu	a0,0(s1)
    80005868:	00050a63          	beqz	a0,8000587c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000586c:	ffffd097          	auipc	ra,0xffffd
    80005870:	cdc080e7          	jalr	-804(ra) # 80002548 <_Z4putcc>
        string++;
    80005874:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005878:	fedff06f          	j	80005864 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000587c:	00000613          	li	a2,0
    80005880:	00100593          	li	a1,1
    80005884:	0000e517          	auipc	a0,0xe
    80005888:	52c50513          	addi	a0,a0,1324 # 80013db0 <lockPrint>
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	98c080e7          	jalr	-1652(ra) # 80001218 <copy_and_swap>
    80005894:	fe0514e3          	bnez	a0,8000587c <_Z11printStringPKc+0x4c>
}
    80005898:	01813083          	ld	ra,24(sp)
    8000589c:	01013403          	ld	s0,16(sp)
    800058a0:	00813483          	ld	s1,8(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800058ac:	fd010113          	addi	sp,sp,-48
    800058b0:	02113423          	sd	ra,40(sp)
    800058b4:	02813023          	sd	s0,32(sp)
    800058b8:	00913c23          	sd	s1,24(sp)
    800058bc:	01213823          	sd	s2,16(sp)
    800058c0:	01313423          	sd	s3,8(sp)
    800058c4:	01413023          	sd	s4,0(sp)
    800058c8:	03010413          	addi	s0,sp,48
    800058cc:	00050993          	mv	s3,a0
    800058d0:	00058a13          	mv	s4,a1
    LOCK();
    800058d4:	00100613          	li	a2,1
    800058d8:	00000593          	li	a1,0
    800058dc:	0000e517          	auipc	a0,0xe
    800058e0:	4d450513          	addi	a0,a0,1236 # 80013db0 <lockPrint>
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	934080e7          	jalr	-1740(ra) # 80001218 <copy_and_swap>
    800058ec:	fe0514e3          	bnez	a0,800058d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800058f0:	00000913          	li	s2,0
    800058f4:	00090493          	mv	s1,s2
    800058f8:	0019091b          	addiw	s2,s2,1
    800058fc:	03495a63          	bge	s2,s4,80005930 <_Z9getStringPci+0x84>
        cc = getc();
    80005900:	ffffd097          	auipc	ra,0xffffd
    80005904:	c20080e7          	jalr	-992(ra) # 80002520 <_Z4getcv>
        if(cc < 1)
    80005908:	02050463          	beqz	a0,80005930 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000590c:	009984b3          	add	s1,s3,s1
    80005910:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005914:	00a00793          	li	a5,10
    80005918:	00f50a63          	beq	a0,a5,8000592c <_Z9getStringPci+0x80>
    8000591c:	00d00793          	li	a5,13
    80005920:	fcf51ae3          	bne	a0,a5,800058f4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005924:	00090493          	mv	s1,s2
    80005928:	0080006f          	j	80005930 <_Z9getStringPci+0x84>
    8000592c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005930:	009984b3          	add	s1,s3,s1
    80005934:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005938:	00000613          	li	a2,0
    8000593c:	00100593          	li	a1,1
    80005940:	0000e517          	auipc	a0,0xe
    80005944:	47050513          	addi	a0,a0,1136 # 80013db0 <lockPrint>
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	8d0080e7          	jalr	-1840(ra) # 80001218 <copy_and_swap>
    80005950:	fe0514e3          	bnez	a0,80005938 <_Z9getStringPci+0x8c>
    return buf;
}
    80005954:	00098513          	mv	a0,s3
    80005958:	02813083          	ld	ra,40(sp)
    8000595c:	02013403          	ld	s0,32(sp)
    80005960:	01813483          	ld	s1,24(sp)
    80005964:	01013903          	ld	s2,16(sp)
    80005968:	00813983          	ld	s3,8(sp)
    8000596c:	00013a03          	ld	s4,0(sp)
    80005970:	03010113          	addi	sp,sp,48
    80005974:	00008067          	ret

0000000080005978 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005978:	ff010113          	addi	sp,sp,-16
    8000597c:	00813423          	sd	s0,8(sp)
    80005980:	01010413          	addi	s0,sp,16
    80005984:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005988:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000598c:	0006c603          	lbu	a2,0(a3)
    80005990:	fd06071b          	addiw	a4,a2,-48
    80005994:	0ff77713          	andi	a4,a4,255
    80005998:	00900793          	li	a5,9
    8000599c:	02e7e063          	bltu	a5,a4,800059bc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059a0:	0025179b          	slliw	a5,a0,0x2
    800059a4:	00a787bb          	addw	a5,a5,a0
    800059a8:	0017979b          	slliw	a5,a5,0x1
    800059ac:	00168693          	addi	a3,a3,1
    800059b0:	00c787bb          	addw	a5,a5,a2
    800059b4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800059b8:	fd5ff06f          	j	8000598c <_Z11stringToIntPKc+0x14>
    return n;
}
    800059bc:	00813403          	ld	s0,8(sp)
    800059c0:	01010113          	addi	sp,sp,16
    800059c4:	00008067          	ret

00000000800059c8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800059c8:	fc010113          	addi	sp,sp,-64
    800059cc:	02113c23          	sd	ra,56(sp)
    800059d0:	02813823          	sd	s0,48(sp)
    800059d4:	02913423          	sd	s1,40(sp)
    800059d8:	03213023          	sd	s2,32(sp)
    800059dc:	01313c23          	sd	s3,24(sp)
    800059e0:	04010413          	addi	s0,sp,64
    800059e4:	00050493          	mv	s1,a0
    800059e8:	00058913          	mv	s2,a1
    800059ec:	00060993          	mv	s3,a2
    LOCK();
    800059f0:	00100613          	li	a2,1
    800059f4:	00000593          	li	a1,0
    800059f8:	0000e517          	auipc	a0,0xe
    800059fc:	3b850513          	addi	a0,a0,952 # 80013db0 <lockPrint>
    80005a00:	ffffc097          	auipc	ra,0xffffc
    80005a04:	818080e7          	jalr	-2024(ra) # 80001218 <copy_and_swap>
    80005a08:	fe0514e3          	bnez	a0,800059f0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005a0c:	00098463          	beqz	s3,80005a14 <_Z8printIntiii+0x4c>
    80005a10:	0804c463          	bltz	s1,80005a98 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a18:	00000593          	li	a1,0
    }

    i = 0;
    80005a1c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005a20:	0009079b          	sext.w	a5,s2
    80005a24:	0325773b          	remuw	a4,a0,s2
    80005a28:	00048613          	mv	a2,s1
    80005a2c:	0014849b          	addiw	s1,s1,1
    80005a30:	02071693          	slli	a3,a4,0x20
    80005a34:	0206d693          	srli	a3,a3,0x20
    80005a38:	00006717          	auipc	a4,0x6
    80005a3c:	1c070713          	addi	a4,a4,448 # 8000bbf8 <digits>
    80005a40:	00d70733          	add	a4,a4,a3
    80005a44:	00074683          	lbu	a3,0(a4)
    80005a48:	fd040713          	addi	a4,s0,-48
    80005a4c:	00c70733          	add	a4,a4,a2
    80005a50:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a54:	0005071b          	sext.w	a4,a0
    80005a58:	0325553b          	divuw	a0,a0,s2
    80005a5c:	fcf772e3          	bgeu	a4,a5,80005a20 <_Z8printIntiii+0x58>
    if(neg)
    80005a60:	00058c63          	beqz	a1,80005a78 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005a64:	fd040793          	addi	a5,s0,-48
    80005a68:	009784b3          	add	s1,a5,s1
    80005a6c:	02d00793          	li	a5,45
    80005a70:	fef48823          	sb	a5,-16(s1)
    80005a74:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a78:	fff4849b          	addiw	s1,s1,-1
    80005a7c:	0204c463          	bltz	s1,80005aa4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005a80:	fd040793          	addi	a5,s0,-48
    80005a84:	009787b3          	add	a5,a5,s1
    80005a88:	ff07c503          	lbu	a0,-16(a5)
    80005a8c:	ffffd097          	auipc	ra,0xffffd
    80005a90:	abc080e7          	jalr	-1348(ra) # 80002548 <_Z4putcc>
    80005a94:	fe5ff06f          	j	80005a78 <_Z8printIntiii+0xb0>
        x = -xx;
    80005a98:	4090053b          	negw	a0,s1
        neg = 1;
    80005a9c:	00100593          	li	a1,1
        x = -xx;
    80005aa0:	f7dff06f          	j	80005a1c <_Z8printIntiii+0x54>

    UNLOCK();
    80005aa4:	00000613          	li	a2,0
    80005aa8:	00100593          	li	a1,1
    80005aac:	0000e517          	auipc	a0,0xe
    80005ab0:	30450513          	addi	a0,a0,772 # 80013db0 <lockPrint>
    80005ab4:	ffffb097          	auipc	ra,0xffffb
    80005ab8:	764080e7          	jalr	1892(ra) # 80001218 <copy_and_swap>
    80005abc:	fe0514e3          	bnez	a0,80005aa4 <_Z8printIntiii+0xdc>
}
    80005ac0:	03813083          	ld	ra,56(sp)
    80005ac4:	03013403          	ld	s0,48(sp)
    80005ac8:	02813483          	ld	s1,40(sp)
    80005acc:	02013903          	ld	s2,32(sp)
    80005ad0:	01813983          	ld	s3,24(sp)
    80005ad4:	04010113          	addi	sp,sp,64
    80005ad8:	00008067          	ret

0000000080005adc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005adc:	fd010113          	addi	sp,sp,-48
    80005ae0:	02113423          	sd	ra,40(sp)
    80005ae4:	02813023          	sd	s0,32(sp)
    80005ae8:	00913c23          	sd	s1,24(sp)
    80005aec:	01213823          	sd	s2,16(sp)
    80005af0:	01313423          	sd	s3,8(sp)
    80005af4:	03010413          	addi	s0,sp,48
    80005af8:	00050493          	mv	s1,a0
    80005afc:	00058913          	mv	s2,a1
    80005b00:	0015879b          	addiw	a5,a1,1
    80005b04:	0007851b          	sext.w	a0,a5
    80005b08:	00f4a023          	sw	a5,0(s1)
    80005b0c:	0004a823          	sw	zero,16(s1)
    80005b10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b14:	00251513          	slli	a0,a0,0x2
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	7d0080e7          	jalr	2000(ra) # 800022e8 <_Z9mem_allocm>
    80005b20:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b24:	01000513          	li	a0,16
    80005b28:	ffffe097          	auipc	ra,0xffffe
    80005b2c:	490080e7          	jalr	1168(ra) # 80003fb8 <_Znwm>
    80005b30:	00050993          	mv	s3,a0
    80005b34:	00000593          	li	a1,0
    80005b38:	ffffe097          	auipc	ra,0xffffe
    80005b3c:	6d4080e7          	jalr	1748(ra) # 8000420c <_ZN9SemaphoreC1Ej>
    80005b40:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005b44:	01000513          	li	a0,16
    80005b48:	ffffe097          	auipc	ra,0xffffe
    80005b4c:	470080e7          	jalr	1136(ra) # 80003fb8 <_Znwm>
    80005b50:	00050993          	mv	s3,a0
    80005b54:	00090593          	mv	a1,s2
    80005b58:	ffffe097          	auipc	ra,0xffffe
    80005b5c:	6b4080e7          	jalr	1716(ra) # 8000420c <_ZN9SemaphoreC1Ej>
    80005b60:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b64:	01000513          	li	a0,16
    80005b68:	ffffe097          	auipc	ra,0xffffe
    80005b6c:	450080e7          	jalr	1104(ra) # 80003fb8 <_Znwm>
    80005b70:	00050913          	mv	s2,a0
    80005b74:	00100593          	li	a1,1
    80005b78:	ffffe097          	auipc	ra,0xffffe
    80005b7c:	694080e7          	jalr	1684(ra) # 8000420c <_ZN9SemaphoreC1Ej>
    80005b80:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b84:	01000513          	li	a0,16
    80005b88:	ffffe097          	auipc	ra,0xffffe
    80005b8c:	430080e7          	jalr	1072(ra) # 80003fb8 <_Znwm>
    80005b90:	00050913          	mv	s2,a0
    80005b94:	00100593          	li	a1,1
    80005b98:	ffffe097          	auipc	ra,0xffffe
    80005b9c:	674080e7          	jalr	1652(ra) # 8000420c <_ZN9SemaphoreC1Ej>
    80005ba0:	0324b823          	sd	s2,48(s1)
}
    80005ba4:	02813083          	ld	ra,40(sp)
    80005ba8:	02013403          	ld	s0,32(sp)
    80005bac:	01813483          	ld	s1,24(sp)
    80005bb0:	01013903          	ld	s2,16(sp)
    80005bb4:	00813983          	ld	s3,8(sp)
    80005bb8:	03010113          	addi	sp,sp,48
    80005bbc:	00008067          	ret
    80005bc0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005bc4:	00098513          	mv	a0,s3
    80005bc8:	ffffe097          	auipc	ra,0xffffe
    80005bcc:	418080e7          	jalr	1048(ra) # 80003fe0 <_ZdlPv>
    80005bd0:	00048513          	mv	a0,s1
    80005bd4:	0000f097          	auipc	ra,0xf
    80005bd8:	2b4080e7          	jalr	692(ra) # 80014e88 <_Unwind_Resume>
    80005bdc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005be0:	00098513          	mv	a0,s3
    80005be4:	ffffe097          	auipc	ra,0xffffe
    80005be8:	3fc080e7          	jalr	1020(ra) # 80003fe0 <_ZdlPv>
    80005bec:	00048513          	mv	a0,s1
    80005bf0:	0000f097          	auipc	ra,0xf
    80005bf4:	298080e7          	jalr	664(ra) # 80014e88 <_Unwind_Resume>
    80005bf8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005bfc:	00090513          	mv	a0,s2
    80005c00:	ffffe097          	auipc	ra,0xffffe
    80005c04:	3e0080e7          	jalr	992(ra) # 80003fe0 <_ZdlPv>
    80005c08:	00048513          	mv	a0,s1
    80005c0c:	0000f097          	auipc	ra,0xf
    80005c10:	27c080e7          	jalr	636(ra) # 80014e88 <_Unwind_Resume>
    80005c14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c18:	00090513          	mv	a0,s2
    80005c1c:	ffffe097          	auipc	ra,0xffffe
    80005c20:	3c4080e7          	jalr	964(ra) # 80003fe0 <_ZdlPv>
    80005c24:	00048513          	mv	a0,s1
    80005c28:	0000f097          	auipc	ra,0xf
    80005c2c:	260080e7          	jalr	608(ra) # 80014e88 <_Unwind_Resume>

0000000080005c30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00113c23          	sd	ra,24(sp)
    80005c38:	00813823          	sd	s0,16(sp)
    80005c3c:	00913423          	sd	s1,8(sp)
    80005c40:	01213023          	sd	s2,0(sp)
    80005c44:	02010413          	addi	s0,sp,32
    80005c48:	00050493          	mv	s1,a0
    80005c4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005c50:	01853503          	ld	a0,24(a0)
    80005c54:	ffffe097          	auipc	ra,0xffffe
    80005c58:	580080e7          	jalr	1408(ra) # 800041d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c5c:	0304b503          	ld	a0,48(s1)
    80005c60:	ffffe097          	auipc	ra,0xffffe
    80005c64:	574080e7          	jalr	1396(ra) # 800041d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c68:	0084b783          	ld	a5,8(s1)
    80005c6c:	0144a703          	lw	a4,20(s1)
    80005c70:	00271713          	slli	a4,a4,0x2
    80005c74:	00e787b3          	add	a5,a5,a4
    80005c78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c7c:	0144a783          	lw	a5,20(s1)
    80005c80:	0017879b          	addiw	a5,a5,1
    80005c84:	0004a703          	lw	a4,0(s1)
    80005c88:	02e7e7bb          	remw	a5,a5,a4
    80005c8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c90:	0304b503          	ld	a0,48(s1)
    80005c94:	ffffe097          	auipc	ra,0xffffe
    80005c98:	5c4080e7          	jalr	1476(ra) # 80004258 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c9c:	0204b503          	ld	a0,32(s1)
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	5b8080e7          	jalr	1464(ra) # 80004258 <_ZN9Semaphore6signalEv>

}
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	01013403          	ld	s0,16(sp)
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	00013903          	ld	s2,0(sp)
    80005cb8:	02010113          	addi	sp,sp,32
    80005cbc:	00008067          	ret

0000000080005cc0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005cc0:	fe010113          	addi	sp,sp,-32
    80005cc4:	00113c23          	sd	ra,24(sp)
    80005cc8:	00813823          	sd	s0,16(sp)
    80005ccc:	00913423          	sd	s1,8(sp)
    80005cd0:	01213023          	sd	s2,0(sp)
    80005cd4:	02010413          	addi	s0,sp,32
    80005cd8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005cdc:	02053503          	ld	a0,32(a0)
    80005ce0:	ffffe097          	auipc	ra,0xffffe
    80005ce4:	4f4080e7          	jalr	1268(ra) # 800041d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005ce8:	0284b503          	ld	a0,40(s1)
    80005cec:	ffffe097          	auipc	ra,0xffffe
    80005cf0:	4e8080e7          	jalr	1256(ra) # 800041d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005cf4:	0084b703          	ld	a4,8(s1)
    80005cf8:	0104a783          	lw	a5,16(s1)
    80005cfc:	00279693          	slli	a3,a5,0x2
    80005d00:	00d70733          	add	a4,a4,a3
    80005d04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d08:	0017879b          	addiw	a5,a5,1
    80005d0c:	0004a703          	lw	a4,0(s1)
    80005d10:	02e7e7bb          	remw	a5,a5,a4
    80005d14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005d18:	0284b503          	ld	a0,40(s1)
    80005d1c:	ffffe097          	auipc	ra,0xffffe
    80005d20:	53c080e7          	jalr	1340(ra) # 80004258 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005d24:	0184b503          	ld	a0,24(s1)
    80005d28:	ffffe097          	auipc	ra,0xffffe
    80005d2c:	530080e7          	jalr	1328(ra) # 80004258 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d30:	00090513          	mv	a0,s2
    80005d34:	01813083          	ld	ra,24(sp)
    80005d38:	01013403          	ld	s0,16(sp)
    80005d3c:	00813483          	ld	s1,8(sp)
    80005d40:	00013903          	ld	s2,0(sp)
    80005d44:	02010113          	addi	sp,sp,32
    80005d48:	00008067          	ret

0000000080005d4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005d4c:	fe010113          	addi	sp,sp,-32
    80005d50:	00113c23          	sd	ra,24(sp)
    80005d54:	00813823          	sd	s0,16(sp)
    80005d58:	00913423          	sd	s1,8(sp)
    80005d5c:	01213023          	sd	s2,0(sp)
    80005d60:	02010413          	addi	s0,sp,32
    80005d64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d68:	02853503          	ld	a0,40(a0)
    80005d6c:	ffffe097          	auipc	ra,0xffffe
    80005d70:	468080e7          	jalr	1128(ra) # 800041d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d74:	0304b503          	ld	a0,48(s1)
    80005d78:	ffffe097          	auipc	ra,0xffffe
    80005d7c:	45c080e7          	jalr	1116(ra) # 800041d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d80:	0144a783          	lw	a5,20(s1)
    80005d84:	0104a903          	lw	s2,16(s1)
    80005d88:	0327ce63          	blt	a5,s2,80005dc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d90:	0304b503          	ld	a0,48(s1)
    80005d94:	ffffe097          	auipc	ra,0xffffe
    80005d98:	4c4080e7          	jalr	1220(ra) # 80004258 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d9c:	0284b503          	ld	a0,40(s1)
    80005da0:	ffffe097          	auipc	ra,0xffffe
    80005da4:	4b8080e7          	jalr	1208(ra) # 80004258 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005da8:	00090513          	mv	a0,s2
    80005dac:	01813083          	ld	ra,24(sp)
    80005db0:	01013403          	ld	s0,16(sp)
    80005db4:	00813483          	ld	s1,8(sp)
    80005db8:	00013903          	ld	s2,0(sp)
    80005dbc:	02010113          	addi	sp,sp,32
    80005dc0:	00008067          	ret
        ret = cap - head + tail;
    80005dc4:	0004a703          	lw	a4,0(s1)
    80005dc8:	4127093b          	subw	s2,a4,s2
    80005dcc:	00f9093b          	addw	s2,s2,a5
    80005dd0:	fc1ff06f          	j	80005d90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005dd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005dd4:	fe010113          	addi	sp,sp,-32
    80005dd8:	00113c23          	sd	ra,24(sp)
    80005ddc:	00813823          	sd	s0,16(sp)
    80005de0:	00913423          	sd	s1,8(sp)
    80005de4:	02010413          	addi	s0,sp,32
    80005de8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005dec:	00a00513          	li	a0,10
    80005df0:	ffffe097          	auipc	ra,0xffffe
    80005df4:	4c8080e7          	jalr	1224(ra) # 800042b8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	75050513          	addi	a0,a0,1872 # 80009548 <CONSOLE_STATUS+0x538>
    80005e00:	00000097          	auipc	ra,0x0
    80005e04:	a30080e7          	jalr	-1488(ra) # 80005830 <_Z11printStringPKc>
    while (getCnt()) {
    80005e08:	00048513          	mv	a0,s1
    80005e0c:	00000097          	auipc	ra,0x0
    80005e10:	f40080e7          	jalr	-192(ra) # 80005d4c <_ZN9BufferCPP6getCntEv>
    80005e14:	02050c63          	beqz	a0,80005e4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005e18:	0084b783          	ld	a5,8(s1)
    80005e1c:	0104a703          	lw	a4,16(s1)
    80005e20:	00271713          	slli	a4,a4,0x2
    80005e24:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005e28:	0007c503          	lbu	a0,0(a5)
    80005e2c:	ffffe097          	auipc	ra,0xffffe
    80005e30:	48c080e7          	jalr	1164(ra) # 800042b8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005e34:	0104a783          	lw	a5,16(s1)
    80005e38:	0017879b          	addiw	a5,a5,1
    80005e3c:	0004a703          	lw	a4,0(s1)
    80005e40:	02e7e7bb          	remw	a5,a5,a4
    80005e44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005e48:	fc1ff06f          	j	80005e08 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005e4c:	02100513          	li	a0,33
    80005e50:	ffffe097          	auipc	ra,0xffffe
    80005e54:	468080e7          	jalr	1128(ra) # 800042b8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e58:	00a00513          	li	a0,10
    80005e5c:	ffffe097          	auipc	ra,0xffffe
    80005e60:	45c080e7          	jalr	1116(ra) # 800042b8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e64:	0084b503          	ld	a0,8(s1)
    80005e68:	ffffc097          	auipc	ra,0xffffc
    80005e6c:	4b0080e7          	jalr	1200(ra) # 80002318 <_Z8mem_freePv>
    delete itemAvailable;
    80005e70:	0204b503          	ld	a0,32(s1)
    80005e74:	00050863          	beqz	a0,80005e84 <_ZN9BufferCPPD1Ev+0xb0>
    80005e78:	00053783          	ld	a5,0(a0)
    80005e7c:	0087b783          	ld	a5,8(a5)
    80005e80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e84:	0184b503          	ld	a0,24(s1)
    80005e88:	00050863          	beqz	a0,80005e98 <_ZN9BufferCPPD1Ev+0xc4>
    80005e8c:	00053783          	ld	a5,0(a0)
    80005e90:	0087b783          	ld	a5,8(a5)
    80005e94:	000780e7          	jalr	a5
    delete mutexTail;
    80005e98:	0304b503          	ld	a0,48(s1)
    80005e9c:	00050863          	beqz	a0,80005eac <_ZN9BufferCPPD1Ev+0xd8>
    80005ea0:	00053783          	ld	a5,0(a0)
    80005ea4:	0087b783          	ld	a5,8(a5)
    80005ea8:	000780e7          	jalr	a5
    delete mutexHead;
    80005eac:	0284b503          	ld	a0,40(s1)
    80005eb0:	00050863          	beqz	a0,80005ec0 <_ZN9BufferCPPD1Ev+0xec>
    80005eb4:	00053783          	ld	a5,0(a0)
    80005eb8:	0087b783          	ld	a5,8(a5)
    80005ebc:	000780e7          	jalr	a5
}
    80005ec0:	01813083          	ld	ra,24(sp)
    80005ec4:	01013403          	ld	s0,16(sp)
    80005ec8:	00813483          	ld	s1,8(sp)
    80005ecc:	02010113          	addi	sp,sp,32
    80005ed0:	00008067          	ret

0000000080005ed4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005ed4:	fe010113          	addi	sp,sp,-32
    80005ed8:	00113c23          	sd	ra,24(sp)
    80005edc:	00813823          	sd	s0,16(sp)
    80005ee0:	00913423          	sd	s1,8(sp)
    80005ee4:	01213023          	sd	s2,0(sp)
    80005ee8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005eec:	00000913          	li	s2,0
    80005ef0:	0380006f          	j	80005f28 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005ef4:	ffffc097          	auipc	ra,0xffffc
    80005ef8:	490080e7          	jalr	1168(ra) # 80002384 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005efc:	00148493          	addi	s1,s1,1
    80005f00:	000027b7          	lui	a5,0x2
    80005f04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f08:	0097ee63          	bltu	a5,s1,80005f24 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f0c:	00000713          	li	a4,0
    80005f10:	000077b7          	lui	a5,0x7
    80005f14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f18:	fce7eee3          	bltu	a5,a4,80005ef4 <_Z11workerBodyAPv+0x20>
    80005f1c:	00170713          	addi	a4,a4,1
    80005f20:	ff1ff06f          	j	80005f10 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f24:	00190913          	addi	s2,s2,1
    80005f28:	00900793          	li	a5,9
    80005f2c:	0527e063          	bltu	a5,s2,80005f6c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f30:	00003517          	auipc	a0,0x3
    80005f34:	63050513          	addi	a0,a0,1584 # 80009560 <CONSOLE_STATUS+0x550>
    80005f38:	00000097          	auipc	ra,0x0
    80005f3c:	8f8080e7          	jalr	-1800(ra) # 80005830 <_Z11printStringPKc>
    80005f40:	00000613          	li	a2,0
    80005f44:	00a00593          	li	a1,10
    80005f48:	0009051b          	sext.w	a0,s2
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	a7c080e7          	jalr	-1412(ra) # 800059c8 <_Z8printIntiii>
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	22c50513          	addi	a0,a0,556 # 80009180 <CONSOLE_STATUS+0x170>
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	8d4080e7          	jalr	-1836(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f64:	00000493          	li	s1,0
    80005f68:	f99ff06f          	j	80005f00 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	5fc50513          	addi	a0,a0,1532 # 80009568 <CONSOLE_STATUS+0x558>
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	8bc080e7          	jalr	-1860(ra) # 80005830 <_Z11printStringPKc>
    finishedA = true;
    80005f7c:	00100793          	li	a5,1
    80005f80:	0000e717          	auipc	a4,0xe
    80005f84:	e2f70c23          	sb	a5,-456(a4) # 80013db8 <finishedA>
}
    80005f88:	01813083          	ld	ra,24(sp)
    80005f8c:	01013403          	ld	s0,16(sp)
    80005f90:	00813483          	ld	s1,8(sp)
    80005f94:	00013903          	ld	s2,0(sp)
    80005f98:	02010113          	addi	sp,sp,32
    80005f9c:	00008067          	ret

0000000080005fa0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005fa0:	fe010113          	addi	sp,sp,-32
    80005fa4:	00113c23          	sd	ra,24(sp)
    80005fa8:	00813823          	sd	s0,16(sp)
    80005fac:	00913423          	sd	s1,8(sp)
    80005fb0:	01213023          	sd	s2,0(sp)
    80005fb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005fb8:	00000913          	li	s2,0
    80005fbc:	0380006f          	j	80005ff4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	3c4080e7          	jalr	964(ra) # 80002384 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fc8:	00148493          	addi	s1,s1,1
    80005fcc:	000027b7          	lui	a5,0x2
    80005fd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fd4:	0097ee63          	bltu	a5,s1,80005ff0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fd8:	00000713          	li	a4,0
    80005fdc:	000077b7          	lui	a5,0x7
    80005fe0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fe4:	fce7eee3          	bltu	a5,a4,80005fc0 <_Z11workerBodyBPv+0x20>
    80005fe8:	00170713          	addi	a4,a4,1
    80005fec:	ff1ff06f          	j	80005fdc <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005ff0:	00190913          	addi	s2,s2,1
    80005ff4:	00f00793          	li	a5,15
    80005ff8:	0527e063          	bltu	a5,s2,80006038 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005ffc:	00003517          	auipc	a0,0x3
    80006000:	57c50513          	addi	a0,a0,1404 # 80009578 <CONSOLE_STATUS+0x568>
    80006004:	00000097          	auipc	ra,0x0
    80006008:	82c080e7          	jalr	-2004(ra) # 80005830 <_Z11printStringPKc>
    8000600c:	00000613          	li	a2,0
    80006010:	00a00593          	li	a1,10
    80006014:	0009051b          	sext.w	a0,s2
    80006018:	00000097          	auipc	ra,0x0
    8000601c:	9b0080e7          	jalr	-1616(ra) # 800059c8 <_Z8printIntiii>
    80006020:	00003517          	auipc	a0,0x3
    80006024:	16050513          	addi	a0,a0,352 # 80009180 <CONSOLE_STATUS+0x170>
    80006028:	00000097          	auipc	ra,0x0
    8000602c:	808080e7          	jalr	-2040(ra) # 80005830 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006030:	00000493          	li	s1,0
    80006034:	f99ff06f          	j	80005fcc <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	34c080e7          	jalr	844(ra) # 80002384 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80006040:	00003517          	auipc	a0,0x3
    80006044:	54050513          	addi	a0,a0,1344 # 80009580 <CONSOLE_STATUS+0x570>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	7e8080e7          	jalr	2024(ra) # 80005830 <_Z11printStringPKc>
    finishedB = true;
    80006050:	00100793          	li	a5,1
    80006054:	0000e717          	auipc	a4,0xe
    80006058:	d6f702a3          	sb	a5,-667(a4) # 80013db9 <finishedB>
}
    8000605c:	01813083          	ld	ra,24(sp)
    80006060:	01013403          	ld	s0,16(sp)
    80006064:	00813483          	ld	s1,8(sp)
    80006068:	00013903          	ld	s2,0(sp)
    8000606c:	02010113          	addi	sp,sp,32
    80006070:	00008067          	ret

0000000080006074 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80006074:	fe010113          	addi	sp,sp,-32
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	00813823          	sd	s0,16(sp)
    80006080:	00913423          	sd	s1,8(sp)
    80006084:	01213023          	sd	s2,0(sp)
    80006088:	02010413          	addi	s0,sp,32
    8000608c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006090:	00100793          	li	a5,1
    80006094:	02a7f863          	bgeu	a5,a0,800060c4 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006098:	00a00793          	li	a5,10
    8000609c:	02f577b3          	remu	a5,a0,a5
    800060a0:	02078e63          	beqz	a5,800060dc <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800060a4:	fff48513          	addi	a0,s1,-1
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	fcc080e7          	jalr	-52(ra) # 80006074 <_Z9fibonaccim>
    800060b0:	00050913          	mv	s2,a0
    800060b4:	ffe48513          	addi	a0,s1,-2
    800060b8:	00000097          	auipc	ra,0x0
    800060bc:	fbc080e7          	jalr	-68(ra) # 80006074 <_Z9fibonaccim>
    800060c0:	00a90533          	add	a0,s2,a0
}
    800060c4:	01813083          	ld	ra,24(sp)
    800060c8:	01013403          	ld	s0,16(sp)
    800060cc:	00813483          	ld	s1,8(sp)
    800060d0:	00013903          	ld	s2,0(sp)
    800060d4:	02010113          	addi	sp,sp,32
    800060d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800060dc:	ffffc097          	auipc	ra,0xffffc
    800060e0:	2a8080e7          	jalr	680(ra) # 80002384 <_Z15thread_dispatchv>
    800060e4:	fc1ff06f          	j	800060a4 <_Z9fibonaccim+0x30>

00000000800060e8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800060e8:	fe010113          	addi	sp,sp,-32
    800060ec:	00113c23          	sd	ra,24(sp)
    800060f0:	00813823          	sd	s0,16(sp)
    800060f4:	00913423          	sd	s1,8(sp)
    800060f8:	01213023          	sd	s2,0(sp)
    800060fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006100:	00000493          	li	s1,0
    80006104:	0400006f          	j	80006144 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80006108:	00003517          	auipc	a0,0x3
    8000610c:	48850513          	addi	a0,a0,1160 # 80009590 <CONSOLE_STATUS+0x580>
    80006110:	fffff097          	auipc	ra,0xfffff
    80006114:	720080e7          	jalr	1824(ra) # 80005830 <_Z11printStringPKc>
    80006118:	00000613          	li	a2,0
    8000611c:	00a00593          	li	a1,10
    80006120:	00048513          	mv	a0,s1
    80006124:	00000097          	auipc	ra,0x0
    80006128:	8a4080e7          	jalr	-1884(ra) # 800059c8 <_Z8printIntiii>
    8000612c:	00003517          	auipc	a0,0x3
    80006130:	05450513          	addi	a0,a0,84 # 80009180 <CONSOLE_STATUS+0x170>
    80006134:	fffff097          	auipc	ra,0xfffff
    80006138:	6fc080e7          	jalr	1788(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000613c:	0014849b          	addiw	s1,s1,1
    80006140:	0ff4f493          	andi	s1,s1,255
    80006144:	00200793          	li	a5,2
    80006148:	fc97f0e3          	bgeu	a5,s1,80006108 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000614c:	00003517          	auipc	a0,0x3
    80006150:	44c50513          	addi	a0,a0,1100 # 80009598 <CONSOLE_STATUS+0x588>
    80006154:	fffff097          	auipc	ra,0xfffff
    80006158:	6dc080e7          	jalr	1756(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000615c:	00700313          	li	t1,7
    thread_dispatch();
    80006160:	ffffc097          	auipc	ra,0xffffc
    80006164:	224080e7          	jalr	548(ra) # 80002384 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006168:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000616c:	00003517          	auipc	a0,0x3
    80006170:	43c50513          	addi	a0,a0,1084 # 800095a8 <CONSOLE_STATUS+0x598>
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	6bc080e7          	jalr	1724(ra) # 80005830 <_Z11printStringPKc>
    8000617c:	00000613          	li	a2,0
    80006180:	00a00593          	li	a1,10
    80006184:	0009051b          	sext.w	a0,s2
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	840080e7          	jalr	-1984(ra) # 800059c8 <_Z8printIntiii>
    80006190:	00003517          	auipc	a0,0x3
    80006194:	ff050513          	addi	a0,a0,-16 # 80009180 <CONSOLE_STATUS+0x170>
    80006198:	fffff097          	auipc	ra,0xfffff
    8000619c:	698080e7          	jalr	1688(ra) # 80005830 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800061a0:	00c00513          	li	a0,12
    800061a4:	00000097          	auipc	ra,0x0
    800061a8:	ed0080e7          	jalr	-304(ra) # 80006074 <_Z9fibonaccim>
    800061ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800061b0:	00003517          	auipc	a0,0x3
    800061b4:	40050513          	addi	a0,a0,1024 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800061b8:	fffff097          	auipc	ra,0xfffff
    800061bc:	678080e7          	jalr	1656(ra) # 80005830 <_Z11printStringPKc>
    800061c0:	00000613          	li	a2,0
    800061c4:	00a00593          	li	a1,10
    800061c8:	0009051b          	sext.w	a0,s2
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	7fc080e7          	jalr	2044(ra) # 800059c8 <_Z8printIntiii>
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	fac50513          	addi	a0,a0,-84 # 80009180 <CONSOLE_STATUS+0x170>
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	654080e7          	jalr	1620(ra) # 80005830 <_Z11printStringPKc>
    800061e4:	0400006f          	j	80006224 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800061e8:	00003517          	auipc	a0,0x3
    800061ec:	3a850513          	addi	a0,a0,936 # 80009590 <CONSOLE_STATUS+0x580>
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	640080e7          	jalr	1600(ra) # 80005830 <_Z11printStringPKc>
    800061f8:	00000613          	li	a2,0
    800061fc:	00a00593          	li	a1,10
    80006200:	00048513          	mv	a0,s1
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	7c4080e7          	jalr	1988(ra) # 800059c8 <_Z8printIntiii>
    8000620c:	00003517          	auipc	a0,0x3
    80006210:	f7450513          	addi	a0,a0,-140 # 80009180 <CONSOLE_STATUS+0x170>
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	61c080e7          	jalr	1564(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000621c:	0014849b          	addiw	s1,s1,1
    80006220:	0ff4f493          	andi	s1,s1,255
    80006224:	00500793          	li	a5,5
    80006228:	fc97f0e3          	bgeu	a5,s1,800061e8 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    8000622c:	ffffc097          	auipc	ra,0xffffc
    80006230:	158080e7          	jalr	344(ra) # 80002384 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80006234:	00003517          	auipc	a0,0x3
    80006238:	33450513          	addi	a0,a0,820 # 80009568 <CONSOLE_STATUS+0x558>
    8000623c:	fffff097          	auipc	ra,0xfffff
    80006240:	5f4080e7          	jalr	1524(ra) # 80005830 <_Z11printStringPKc>
    finishedC = true;
    80006244:	00100793          	li	a5,1
    80006248:	0000e717          	auipc	a4,0xe
    8000624c:	b6f70923          	sb	a5,-1166(a4) # 80013dba <finishedC>
}
    80006250:	01813083          	ld	ra,24(sp)
    80006254:	01013403          	ld	s0,16(sp)
    80006258:	00813483          	ld	s1,8(sp)
    8000625c:	00013903          	ld	s2,0(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret

0000000080006268 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80006268:	fe010113          	addi	sp,sp,-32
    8000626c:	00113c23          	sd	ra,24(sp)
    80006270:	00813823          	sd	s0,16(sp)
    80006274:	00913423          	sd	s1,8(sp)
    80006278:	01213023          	sd	s2,0(sp)
    8000627c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006280:	00a00493          	li	s1,10
    80006284:	0400006f          	j	800062c4 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	33850513          	addi	a0,a0,824 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	5a0080e7          	jalr	1440(ra) # 80005830 <_Z11printStringPKc>
    80006298:	00000613          	li	a2,0
    8000629c:	00a00593          	li	a1,10
    800062a0:	00048513          	mv	a0,s1
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	724080e7          	jalr	1828(ra) # 800059c8 <_Z8printIntiii>
    800062ac:	00003517          	auipc	a0,0x3
    800062b0:	ed450513          	addi	a0,a0,-300 # 80009180 <CONSOLE_STATUS+0x170>
    800062b4:	fffff097          	auipc	ra,0xfffff
    800062b8:	57c080e7          	jalr	1404(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800062bc:	0014849b          	addiw	s1,s1,1
    800062c0:	0ff4f493          	andi	s1,s1,255
    800062c4:	00c00793          	li	a5,12
    800062c8:	fc97f0e3          	bgeu	a5,s1,80006288 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800062cc:	00003517          	auipc	a0,0x3
    800062d0:	2fc50513          	addi	a0,a0,764 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800062d4:	fffff097          	auipc	ra,0xfffff
    800062d8:	55c080e7          	jalr	1372(ra) # 80005830 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800062dc:	00500313          	li	t1,5
    thread_dispatch();
    800062e0:	ffffc097          	auipc	ra,0xffffc
    800062e4:	0a4080e7          	jalr	164(ra) # 80002384 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800062e8:	01000513          	li	a0,16
    800062ec:	00000097          	auipc	ra,0x0
    800062f0:	d88080e7          	jalr	-632(ra) # 80006074 <_Z9fibonaccim>
    800062f4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	2e050513          	addi	a0,a0,736 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	530080e7          	jalr	1328(ra) # 80005830 <_Z11printStringPKc>
    80006308:	00000613          	li	a2,0
    8000630c:	00a00593          	li	a1,10
    80006310:	0009051b          	sext.w	a0,s2
    80006314:	fffff097          	auipc	ra,0xfffff
    80006318:	6b4080e7          	jalr	1716(ra) # 800059c8 <_Z8printIntiii>
    8000631c:	00003517          	auipc	a0,0x3
    80006320:	e6450513          	addi	a0,a0,-412 # 80009180 <CONSOLE_STATUS+0x170>
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	50c080e7          	jalr	1292(ra) # 80005830 <_Z11printStringPKc>
    8000632c:	0400006f          	j	8000636c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006330:	00003517          	auipc	a0,0x3
    80006334:	29050513          	addi	a0,a0,656 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006338:	fffff097          	auipc	ra,0xfffff
    8000633c:	4f8080e7          	jalr	1272(ra) # 80005830 <_Z11printStringPKc>
    80006340:	00000613          	li	a2,0
    80006344:	00a00593          	li	a1,10
    80006348:	00048513          	mv	a0,s1
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	67c080e7          	jalr	1660(ra) # 800059c8 <_Z8printIntiii>
    80006354:	00003517          	auipc	a0,0x3
    80006358:	e2c50513          	addi	a0,a0,-468 # 80009180 <CONSOLE_STATUS+0x170>
    8000635c:	fffff097          	auipc	ra,0xfffff
    80006360:	4d4080e7          	jalr	1236(ra) # 80005830 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006364:	0014849b          	addiw	s1,s1,1
    80006368:	0ff4f493          	andi	s1,s1,255
    8000636c:	00f00793          	li	a5,15
    80006370:	fc97f0e3          	bgeu	a5,s1,80006330 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80006374:	ffffc097          	auipc	ra,0xffffc
    80006378:	010080e7          	jalr	16(ra) # 80002384 <_Z15thread_dispatchv>
    printString("D finished!\n");
    8000637c:	00003517          	auipc	a0,0x3
    80006380:	26c50513          	addi	a0,a0,620 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006384:	fffff097          	auipc	ra,0xfffff
    80006388:	4ac080e7          	jalr	1196(ra) # 80005830 <_Z11printStringPKc>
    finishedD = true;
    8000638c:	00100793          	li	a5,1
    80006390:	0000e717          	auipc	a4,0xe
    80006394:	a2f705a3          	sb	a5,-1493(a4) # 80013dbb <finishedD>
}
    80006398:	01813083          	ld	ra,24(sp)
    8000639c:	01013403          	ld	s0,16(sp)
    800063a0:	00813483          	ld	s1,8(sp)
    800063a4:	00013903          	ld	s2,0(sp)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00008067          	ret

00000000800063b0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800063b0:	fc010113          	addi	sp,sp,-64
    800063b4:	02113c23          	sd	ra,56(sp)
    800063b8:	02813823          	sd	s0,48(sp)
    800063bc:	02913423          	sd	s1,40(sp)
    800063c0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800063c4:	00000613          	li	a2,0
    800063c8:	00000597          	auipc	a1,0x0
    800063cc:	b0c58593          	addi	a1,a1,-1268 # 80005ed4 <_Z11workerBodyAPv>
    800063d0:	fc040513          	addi	a0,s0,-64
    800063d4:	ffffc097          	auipc	ra,0xffffc
    800063d8:	f70080e7          	jalr	-144(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	21c50513          	addi	a0,a0,540 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	44c080e7          	jalr	1100(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800063ec:	00000613          	li	a2,0
    800063f0:	00000597          	auipc	a1,0x0
    800063f4:	bb058593          	addi	a1,a1,-1104 # 80005fa0 <_Z11workerBodyBPv>
    800063f8:	fc840513          	addi	a0,s0,-56
    800063fc:	ffffc097          	auipc	ra,0xffffc
    80006400:	f48080e7          	jalr	-184(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006404:	00003517          	auipc	a0,0x3
    80006408:	20c50513          	addi	a0,a0,524 # 80009610 <CONSOLE_STATUS+0x600>
    8000640c:	fffff097          	auipc	ra,0xfffff
    80006410:	424080e7          	jalr	1060(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006414:	00000613          	li	a2,0
    80006418:	00000597          	auipc	a1,0x0
    8000641c:	cd058593          	addi	a1,a1,-816 # 800060e8 <_Z11workerBodyCPv>
    80006420:	fd040513          	addi	a0,s0,-48
    80006424:	ffffc097          	auipc	ra,0xffffc
    80006428:	f20080e7          	jalr	-224(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000642c:	00003517          	auipc	a0,0x3
    80006430:	1fc50513          	addi	a0,a0,508 # 80009628 <CONSOLE_STATUS+0x618>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	3fc080e7          	jalr	1020(ra) # 80005830 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000643c:	00000613          	li	a2,0
    80006440:	00000597          	auipc	a1,0x0
    80006444:	e2858593          	addi	a1,a1,-472 # 80006268 <_Z11workerBodyDPv>
    80006448:	fd840513          	addi	a0,s0,-40
    8000644c:	ffffc097          	auipc	ra,0xffffc
    80006450:	ef8080e7          	jalr	-264(ra) # 80002344 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006454:	00003517          	auipc	a0,0x3
    80006458:	1ec50513          	addi	a0,a0,492 # 80009640 <CONSOLE_STATUS+0x630>
    8000645c:	fffff097          	auipc	ra,0xfffff
    80006460:	3d4080e7          	jalr	980(ra) # 80005830 <_Z11printStringPKc>
    80006464:	00c0006f          	j	80006470 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006468:	ffffc097          	auipc	ra,0xffffc
    8000646c:	f1c080e7          	jalr	-228(ra) # 80002384 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006470:	0000e797          	auipc	a5,0xe
    80006474:	9487c783          	lbu	a5,-1720(a5) # 80013db8 <finishedA>
    80006478:	fe0788e3          	beqz	a5,80006468 <_Z18Threads_C_API_testv+0xb8>
    8000647c:	0000e797          	auipc	a5,0xe
    80006480:	93d7c783          	lbu	a5,-1731(a5) # 80013db9 <finishedB>
    80006484:	fe0782e3          	beqz	a5,80006468 <_Z18Threads_C_API_testv+0xb8>
    80006488:	0000e797          	auipc	a5,0xe
    8000648c:	9327c783          	lbu	a5,-1742(a5) # 80013dba <finishedC>
    80006490:	fc078ce3          	beqz	a5,80006468 <_Z18Threads_C_API_testv+0xb8>
    80006494:	0000e797          	auipc	a5,0xe
    80006498:	9277c783          	lbu	a5,-1753(a5) # 80013dbb <finishedD>
    8000649c:	fc0786e3          	beqz	a5,80006468 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    800064a0:	fc040493          	addi	s1,s0,-64
    800064a4:	0080006f          	j	800064ac <_Z18Threads_C_API_testv+0xfc>
    800064a8:	00848493          	addi	s1,s1,8
    800064ac:	fe040793          	addi	a5,s0,-32
    800064b0:	00f48c63          	beq	s1,a5,800064c8 <_Z18Threads_C_API_testv+0x118>
    800064b4:	0004b503          	ld	a0,0(s1)
    800064b8:	fe0508e3          	beqz	a0,800064a8 <_Z18Threads_C_API_testv+0xf8>
    800064bc:	ffffc097          	auipc	ra,0xffffc
    800064c0:	104080e7          	jalr	260(ra) # 800025c0 <_ZN7_threaddlEPv>
    800064c4:	fe5ff06f          	j	800064a8 <_Z18Threads_C_API_testv+0xf8>
}
    800064c8:	03813083          	ld	ra,56(sp)
    800064cc:	03013403          	ld	s0,48(sp)
    800064d0:	02813483          	ld	s1,40(sp)
    800064d4:	04010113          	addi	sp,sp,64
    800064d8:	00008067          	ret

00000000800064dc <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    800064dc:	ff010113          	addi	sp,sp,-16
    800064e0:	00113423          	sd	ra,8(sp)
    800064e4:	00813023          	sd	s0,0(sp)
    800064e8:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800064ec:	00000097          	auipc	ra,0x0
    800064f0:	ec4080e7          	jalr	-316(ra) # 800063b0 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800064f4:	00813083          	ld	ra,8(sp)
    800064f8:	00013403          	ld	s0,0(sp)
    800064fc:	01010113          	addi	sp,sp,16
    80006500:	00008067          	ret

0000000080006504 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006504:	fe010113          	addi	sp,sp,-32
    80006508:	00113c23          	sd	ra,24(sp)
    8000650c:	00813823          	sd	s0,16(sp)
    80006510:	00913423          	sd	s1,8(sp)
    80006514:	01213023          	sd	s2,0(sp)
    80006518:	02010413          	addi	s0,sp,32
    8000651c:	00050493          	mv	s1,a0
    80006520:	00058913          	mv	s2,a1
    80006524:	0015879b          	addiw	a5,a1,1
    80006528:	0007851b          	sext.w	a0,a5
    8000652c:	00f4a023          	sw	a5,0(s1)
    80006530:	0004a823          	sw	zero,16(s1)
    80006534:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006538:	00251513          	slli	a0,a0,0x2
    8000653c:	ffffc097          	auipc	ra,0xffffc
    80006540:	dac080e7          	jalr	-596(ra) # 800022e8 <_Z9mem_allocm>
    80006544:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006548:	00000593          	li	a1,0
    8000654c:	02048513          	addi	a0,s1,32
    80006550:	ffffc097          	auipc	ra,0xffffc
    80006554:	e7c080e7          	jalr	-388(ra) # 800023cc <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006558:	00090593          	mv	a1,s2
    8000655c:	01848513          	addi	a0,s1,24
    80006560:	ffffc097          	auipc	ra,0xffffc
    80006564:	e6c080e7          	jalr	-404(ra) # 800023cc <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006568:	00100593          	li	a1,1
    8000656c:	02848513          	addi	a0,s1,40
    80006570:	ffffc097          	auipc	ra,0xffffc
    80006574:	e5c080e7          	jalr	-420(ra) # 800023cc <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006578:	00100593          	li	a1,1
    8000657c:	03048513          	addi	a0,s1,48
    80006580:	ffffc097          	auipc	ra,0xffffc
    80006584:	e4c080e7          	jalr	-436(ra) # 800023cc <_Z8sem_openPP4_semj>
}
    80006588:	01813083          	ld	ra,24(sp)
    8000658c:	01013403          	ld	s0,16(sp)
    80006590:	00813483          	ld	s1,8(sp)
    80006594:	00013903          	ld	s2,0(sp)
    80006598:	02010113          	addi	sp,sp,32
    8000659c:	00008067          	ret

00000000800065a0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800065a0:	fe010113          	addi	sp,sp,-32
    800065a4:	00113c23          	sd	ra,24(sp)
    800065a8:	00813823          	sd	s0,16(sp)
    800065ac:	00913423          	sd	s1,8(sp)
    800065b0:	01213023          	sd	s2,0(sp)
    800065b4:	02010413          	addi	s0,sp,32
    800065b8:	00050493          	mv	s1,a0
    800065bc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800065c0:	01853503          	ld	a0,24(a0)
    800065c4:	ffffc097          	auipc	ra,0xffffc
    800065c8:	e6c080e7          	jalr	-404(ra) # 80002430 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800065cc:	0304b503          	ld	a0,48(s1)
    800065d0:	ffffc097          	auipc	ra,0xffffc
    800065d4:	e60080e7          	jalr	-416(ra) # 80002430 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800065d8:	0084b783          	ld	a5,8(s1)
    800065dc:	0144a703          	lw	a4,20(s1)
    800065e0:	00271713          	slli	a4,a4,0x2
    800065e4:	00e787b3          	add	a5,a5,a4
    800065e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065ec:	0144a783          	lw	a5,20(s1)
    800065f0:	0017879b          	addiw	a5,a5,1
    800065f4:	0004a703          	lw	a4,0(s1)
    800065f8:	02e7e7bb          	remw	a5,a5,a4
    800065fc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006600:	0304b503          	ld	a0,48(s1)
    80006604:	ffffc097          	auipc	ra,0xffffc
    80006608:	e58080e7          	jalr	-424(ra) # 8000245c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000660c:	0204b503          	ld	a0,32(s1)
    80006610:	ffffc097          	auipc	ra,0xffffc
    80006614:	e4c080e7          	jalr	-436(ra) # 8000245c <_Z10sem_signalP4_sem>

}
    80006618:	01813083          	ld	ra,24(sp)
    8000661c:	01013403          	ld	s0,16(sp)
    80006620:	00813483          	ld	s1,8(sp)
    80006624:	00013903          	ld	s2,0(sp)
    80006628:	02010113          	addi	sp,sp,32
    8000662c:	00008067          	ret

0000000080006630 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006630:	fe010113          	addi	sp,sp,-32
    80006634:	00113c23          	sd	ra,24(sp)
    80006638:	00813823          	sd	s0,16(sp)
    8000663c:	00913423          	sd	s1,8(sp)
    80006640:	01213023          	sd	s2,0(sp)
    80006644:	02010413          	addi	s0,sp,32
    80006648:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000664c:	02053503          	ld	a0,32(a0)
    80006650:	ffffc097          	auipc	ra,0xffffc
    80006654:	de0080e7          	jalr	-544(ra) # 80002430 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006658:	0284b503          	ld	a0,40(s1)
    8000665c:	ffffc097          	auipc	ra,0xffffc
    80006660:	dd4080e7          	jalr	-556(ra) # 80002430 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006664:	0084b703          	ld	a4,8(s1)
    80006668:	0104a783          	lw	a5,16(s1)
    8000666c:	00279693          	slli	a3,a5,0x2
    80006670:	00d70733          	add	a4,a4,a3
    80006674:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006678:	0017879b          	addiw	a5,a5,1
    8000667c:	0004a703          	lw	a4,0(s1)
    80006680:	02e7e7bb          	remw	a5,a5,a4
    80006684:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006688:	0284b503          	ld	a0,40(s1)
    8000668c:	ffffc097          	auipc	ra,0xffffc
    80006690:	dd0080e7          	jalr	-560(ra) # 8000245c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006694:	0184b503          	ld	a0,24(s1)
    80006698:	ffffc097          	auipc	ra,0xffffc
    8000669c:	dc4080e7          	jalr	-572(ra) # 8000245c <_Z10sem_signalP4_sem>

    return ret;
}
    800066a0:	00090513          	mv	a0,s2
    800066a4:	01813083          	ld	ra,24(sp)
    800066a8:	01013403          	ld	s0,16(sp)
    800066ac:	00813483          	ld	s1,8(sp)
    800066b0:	00013903          	ld	s2,0(sp)
    800066b4:	02010113          	addi	sp,sp,32
    800066b8:	00008067          	ret

00000000800066bc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00113c23          	sd	ra,24(sp)
    800066c4:	00813823          	sd	s0,16(sp)
    800066c8:	00913423          	sd	s1,8(sp)
    800066cc:	01213023          	sd	s2,0(sp)
    800066d0:	02010413          	addi	s0,sp,32
    800066d4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800066d8:	02853503          	ld	a0,40(a0)
    800066dc:	ffffc097          	auipc	ra,0xffffc
    800066e0:	d54080e7          	jalr	-684(ra) # 80002430 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800066e4:	0304b503          	ld	a0,48(s1)
    800066e8:	ffffc097          	auipc	ra,0xffffc
    800066ec:	d48080e7          	jalr	-696(ra) # 80002430 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800066f0:	0144a783          	lw	a5,20(s1)
    800066f4:	0104a903          	lw	s2,16(s1)
    800066f8:	0327ce63          	blt	a5,s2,80006734 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800066fc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006700:	0304b503          	ld	a0,48(s1)
    80006704:	ffffc097          	auipc	ra,0xffffc
    80006708:	d58080e7          	jalr	-680(ra) # 8000245c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000670c:	0284b503          	ld	a0,40(s1)
    80006710:	ffffc097          	auipc	ra,0xffffc
    80006714:	d4c080e7          	jalr	-692(ra) # 8000245c <_Z10sem_signalP4_sem>

    return ret;
    80006718:	00090513          	mv	a0,s2
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	00013903          	ld	s2,0(sp)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00008067          	ret
        ret = cap - head + tail;
    80006734:	0004a703          	lw	a4,0(s1)
    80006738:	4127093b          	subw	s2,a4,s2
    8000673c:	00f9093b          	addw	s2,s2,a5
    80006740:	fc1ff06f          	j	80006700 <_ZN6Buffer6getCntEv+0x44>

0000000080006744 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006744:	fe010113          	addi	sp,sp,-32
    80006748:	00113c23          	sd	ra,24(sp)
    8000674c:	00813823          	sd	s0,16(sp)
    80006750:	00913423          	sd	s1,8(sp)
    80006754:	02010413          	addi	s0,sp,32
    80006758:	00050493          	mv	s1,a0
    putc('\n');
    8000675c:	00a00513          	li	a0,10
    80006760:	ffffc097          	auipc	ra,0xffffc
    80006764:	de8080e7          	jalr	-536(ra) # 80002548 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	de050513          	addi	a0,a0,-544 # 80009548 <CONSOLE_STATUS+0x538>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	0c0080e7          	jalr	192(ra) # 80005830 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006778:	00048513          	mv	a0,s1
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	f40080e7          	jalr	-192(ra) # 800066bc <_ZN6Buffer6getCntEv>
    80006784:	02a05c63          	blez	a0,800067bc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006788:	0084b783          	ld	a5,8(s1)
    8000678c:	0104a703          	lw	a4,16(s1)
    80006790:	00271713          	slli	a4,a4,0x2
    80006794:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006798:	0007c503          	lbu	a0,0(a5)
    8000679c:	ffffc097          	auipc	ra,0xffffc
    800067a0:	dac080e7          	jalr	-596(ra) # 80002548 <_Z4putcc>
        head = (head + 1) % cap;
    800067a4:	0104a783          	lw	a5,16(s1)
    800067a8:	0017879b          	addiw	a5,a5,1
    800067ac:	0004a703          	lw	a4,0(s1)
    800067b0:	02e7e7bb          	remw	a5,a5,a4
    800067b4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800067b8:	fc1ff06f          	j	80006778 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800067bc:	02100513          	li	a0,33
    800067c0:	ffffc097          	auipc	ra,0xffffc
    800067c4:	d88080e7          	jalr	-632(ra) # 80002548 <_Z4putcc>
    putc('\n');
    800067c8:	00a00513          	li	a0,10
    800067cc:	ffffc097          	auipc	ra,0xffffc
    800067d0:	d7c080e7          	jalr	-644(ra) # 80002548 <_Z4putcc>
    mem_free(buffer);
    800067d4:	0084b503          	ld	a0,8(s1)
    800067d8:	ffffc097          	auipc	ra,0xffffc
    800067dc:	b40080e7          	jalr	-1216(ra) # 80002318 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800067e0:	0204b503          	ld	a0,32(s1)
    800067e4:	ffffc097          	auipc	ra,0xffffc
    800067e8:	c20080e7          	jalr	-992(ra) # 80002404 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800067ec:	0184b503          	ld	a0,24(s1)
    800067f0:	ffffc097          	auipc	ra,0xffffc
    800067f4:	c14080e7          	jalr	-1004(ra) # 80002404 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800067f8:	0304b503          	ld	a0,48(s1)
    800067fc:	ffffc097          	auipc	ra,0xffffc
    80006800:	c08080e7          	jalr	-1016(ra) # 80002404 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006804:	0284b503          	ld	a0,40(s1)
    80006808:	ffffc097          	auipc	ra,0xffffc
    8000680c:	bfc080e7          	jalr	-1028(ra) # 80002404 <_Z9sem_closeP4_sem>
}
    80006810:	01813083          	ld	ra,24(sp)
    80006814:	01013403          	ld	s0,16(sp)
    80006818:	00813483          	ld	s1,8(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret

0000000080006824 <start>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	300027f3          	csrr	a5,mstatus
    80006834:	ffffe737          	lui	a4,0xffffe
    80006838:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe97df>
    8000683c:	00e7f7b3          	and	a5,a5,a4
    80006840:	00001737          	lui	a4,0x1
    80006844:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006848:	00e7e7b3          	or	a5,a5,a4
    8000684c:	30079073          	csrw	mstatus,a5
    80006850:	00000797          	auipc	a5,0x0
    80006854:	16078793          	addi	a5,a5,352 # 800069b0 <system_main>
    80006858:	34179073          	csrw	mepc,a5
    8000685c:	00000793          	li	a5,0
    80006860:	18079073          	csrw	satp,a5
    80006864:	000107b7          	lui	a5,0x10
    80006868:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000686c:	30279073          	csrw	medeleg,a5
    80006870:	30379073          	csrw	mideleg,a5
    80006874:	104027f3          	csrr	a5,sie
    80006878:	2227e793          	ori	a5,a5,546
    8000687c:	10479073          	csrw	sie,a5
    80006880:	fff00793          	li	a5,-1
    80006884:	00a7d793          	srli	a5,a5,0xa
    80006888:	3b079073          	csrw	pmpaddr0,a5
    8000688c:	00f00793          	li	a5,15
    80006890:	3a079073          	csrw	pmpcfg0,a5
    80006894:	f14027f3          	csrr	a5,mhartid
    80006898:	0200c737          	lui	a4,0x200c
    8000689c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800068a0:	0007869b          	sext.w	a3,a5
    800068a4:	00269713          	slli	a4,a3,0x2
    800068a8:	000f4637          	lui	a2,0xf4
    800068ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068b0:	00d70733          	add	a4,a4,a3
    800068b4:	0037979b          	slliw	a5,a5,0x3
    800068b8:	020046b7          	lui	a3,0x2004
    800068bc:	00d787b3          	add	a5,a5,a3
    800068c0:	00c585b3          	add	a1,a1,a2
    800068c4:	00371693          	slli	a3,a4,0x3
    800068c8:	0000d717          	auipc	a4,0xd
    800068cc:	4f870713          	addi	a4,a4,1272 # 80013dc0 <timer_scratch>
    800068d0:	00b7b023          	sd	a1,0(a5)
    800068d4:	00d70733          	add	a4,a4,a3
    800068d8:	00f73c23          	sd	a5,24(a4)
    800068dc:	02c73023          	sd	a2,32(a4)
    800068e0:	34071073          	csrw	mscratch,a4
    800068e4:	00000797          	auipc	a5,0x0
    800068e8:	6ec78793          	addi	a5,a5,1772 # 80006fd0 <timervec>
    800068ec:	30579073          	csrw	mtvec,a5
    800068f0:	300027f3          	csrr	a5,mstatus
    800068f4:	0087e793          	ori	a5,a5,8
    800068f8:	30079073          	csrw	mstatus,a5
    800068fc:	304027f3          	csrr	a5,mie
    80006900:	0807e793          	ori	a5,a5,128
    80006904:	30479073          	csrw	mie,a5
    80006908:	f14027f3          	csrr	a5,mhartid
    8000690c:	0007879b          	sext.w	a5,a5
    80006910:	00078213          	mv	tp,a5
    80006914:	30200073          	mret
    80006918:	00813403          	ld	s0,8(sp)
    8000691c:	01010113          	addi	sp,sp,16
    80006920:	00008067          	ret

0000000080006924 <timerinit>:
    80006924:	ff010113          	addi	sp,sp,-16
    80006928:	00813423          	sd	s0,8(sp)
    8000692c:	01010413          	addi	s0,sp,16
    80006930:	f14027f3          	csrr	a5,mhartid
    80006934:	0200c737          	lui	a4,0x200c
    80006938:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000693c:	0007869b          	sext.w	a3,a5
    80006940:	00269713          	slli	a4,a3,0x2
    80006944:	000f4637          	lui	a2,0xf4
    80006948:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000694c:	00d70733          	add	a4,a4,a3
    80006950:	0037979b          	slliw	a5,a5,0x3
    80006954:	020046b7          	lui	a3,0x2004
    80006958:	00d787b3          	add	a5,a5,a3
    8000695c:	00c585b3          	add	a1,a1,a2
    80006960:	00371693          	slli	a3,a4,0x3
    80006964:	0000d717          	auipc	a4,0xd
    80006968:	45c70713          	addi	a4,a4,1116 # 80013dc0 <timer_scratch>
    8000696c:	00b7b023          	sd	a1,0(a5)
    80006970:	00d70733          	add	a4,a4,a3
    80006974:	00f73c23          	sd	a5,24(a4)
    80006978:	02c73023          	sd	a2,32(a4)
    8000697c:	34071073          	csrw	mscratch,a4
    80006980:	00000797          	auipc	a5,0x0
    80006984:	65078793          	addi	a5,a5,1616 # 80006fd0 <timervec>
    80006988:	30579073          	csrw	mtvec,a5
    8000698c:	300027f3          	csrr	a5,mstatus
    80006990:	0087e793          	ori	a5,a5,8
    80006994:	30079073          	csrw	mstatus,a5
    80006998:	304027f3          	csrr	a5,mie
    8000699c:	0807e793          	ori	a5,a5,128
    800069a0:	30479073          	csrw	mie,a5
    800069a4:	00813403          	ld	s0,8(sp)
    800069a8:	01010113          	addi	sp,sp,16
    800069ac:	00008067          	ret

00000000800069b0 <system_main>:
    800069b0:	fe010113          	addi	sp,sp,-32
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00913423          	sd	s1,8(sp)
    800069bc:	00113c23          	sd	ra,24(sp)
    800069c0:	02010413          	addi	s0,sp,32
    800069c4:	00000097          	auipc	ra,0x0
    800069c8:	0c4080e7          	jalr	196(ra) # 80006a88 <cpuid>
    800069cc:	00005497          	auipc	s1,0x5
    800069d0:	2f448493          	addi	s1,s1,756 # 8000bcc0 <started>
    800069d4:	02050263          	beqz	a0,800069f8 <system_main+0x48>
    800069d8:	0004a783          	lw	a5,0(s1)
    800069dc:	0007879b          	sext.w	a5,a5
    800069e0:	fe078ce3          	beqz	a5,800069d8 <system_main+0x28>
    800069e4:	0ff0000f          	fence
    800069e8:	00003517          	auipc	a0,0x3
    800069ec:	ca050513          	addi	a0,a0,-864 # 80009688 <CONSOLE_STATUS+0x678>
    800069f0:	00001097          	auipc	ra,0x1
    800069f4:	a7c080e7          	jalr	-1412(ra) # 8000746c <panic>
    800069f8:	00001097          	auipc	ra,0x1
    800069fc:	9d0080e7          	jalr	-1584(ra) # 800073c8 <consoleinit>
    80006a00:	00001097          	auipc	ra,0x1
    80006a04:	15c080e7          	jalr	348(ra) # 80007b5c <printfinit>
    80006a08:	00002517          	auipc	a0,0x2
    80006a0c:	77850513          	addi	a0,a0,1912 # 80009180 <CONSOLE_STATUS+0x170>
    80006a10:	00001097          	auipc	ra,0x1
    80006a14:	ab8080e7          	jalr	-1352(ra) # 800074c8 <__printf>
    80006a18:	00003517          	auipc	a0,0x3
    80006a1c:	c4050513          	addi	a0,a0,-960 # 80009658 <CONSOLE_STATUS+0x648>
    80006a20:	00001097          	auipc	ra,0x1
    80006a24:	aa8080e7          	jalr	-1368(ra) # 800074c8 <__printf>
    80006a28:	00002517          	auipc	a0,0x2
    80006a2c:	75850513          	addi	a0,a0,1880 # 80009180 <CONSOLE_STATUS+0x170>
    80006a30:	00001097          	auipc	ra,0x1
    80006a34:	a98080e7          	jalr	-1384(ra) # 800074c8 <__printf>
    80006a38:	00001097          	auipc	ra,0x1
    80006a3c:	4b0080e7          	jalr	1200(ra) # 80007ee8 <kinit>
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	148080e7          	jalr	328(ra) # 80006b88 <trapinit>
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	16c080e7          	jalr	364(ra) # 80006bb4 <trapinithart>
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	5c0080e7          	jalr	1472(ra) # 80007010 <plicinit>
    80006a58:	00000097          	auipc	ra,0x0
    80006a5c:	5e0080e7          	jalr	1504(ra) # 80007038 <plicinithart>
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	078080e7          	jalr	120(ra) # 80006ad8 <userinit>
    80006a68:	0ff0000f          	fence
    80006a6c:	00100793          	li	a5,1
    80006a70:	00003517          	auipc	a0,0x3
    80006a74:	c0050513          	addi	a0,a0,-1024 # 80009670 <CONSOLE_STATUS+0x660>
    80006a78:	00f4a023          	sw	a5,0(s1)
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	a4c080e7          	jalr	-1460(ra) # 800074c8 <__printf>
    80006a84:	0000006f          	j	80006a84 <system_main+0xd4>

0000000080006a88 <cpuid>:
    80006a88:	ff010113          	addi	sp,sp,-16
    80006a8c:	00813423          	sd	s0,8(sp)
    80006a90:	01010413          	addi	s0,sp,16
    80006a94:	00020513          	mv	a0,tp
    80006a98:	00813403          	ld	s0,8(sp)
    80006a9c:	0005051b          	sext.w	a0,a0
    80006aa0:	01010113          	addi	sp,sp,16
    80006aa4:	00008067          	ret

0000000080006aa8 <mycpu>:
    80006aa8:	ff010113          	addi	sp,sp,-16
    80006aac:	00813423          	sd	s0,8(sp)
    80006ab0:	01010413          	addi	s0,sp,16
    80006ab4:	00020793          	mv	a5,tp
    80006ab8:	00813403          	ld	s0,8(sp)
    80006abc:	0007879b          	sext.w	a5,a5
    80006ac0:	00779793          	slli	a5,a5,0x7
    80006ac4:	0000e517          	auipc	a0,0xe
    80006ac8:	32c50513          	addi	a0,a0,812 # 80014df0 <cpus>
    80006acc:	00f50533          	add	a0,a0,a5
    80006ad0:	01010113          	addi	sp,sp,16
    80006ad4:	00008067          	ret

0000000080006ad8 <userinit>:
    80006ad8:	ff010113          	addi	sp,sp,-16
    80006adc:	00813423          	sd	s0,8(sp)
    80006ae0:	01010413          	addi	s0,sp,16
    80006ae4:	00813403          	ld	s0,8(sp)
    80006ae8:	01010113          	addi	sp,sp,16
    80006aec:	ffffd317          	auipc	t1,0xffffd
    80006af0:	03c30067          	jr	60(t1) # 80003b28 <main>

0000000080006af4 <either_copyout>:
    80006af4:	ff010113          	addi	sp,sp,-16
    80006af8:	00813023          	sd	s0,0(sp)
    80006afc:	00113423          	sd	ra,8(sp)
    80006b00:	01010413          	addi	s0,sp,16
    80006b04:	02051663          	bnez	a0,80006b30 <either_copyout+0x3c>
    80006b08:	00058513          	mv	a0,a1
    80006b0c:	00060593          	mv	a1,a2
    80006b10:	0006861b          	sext.w	a2,a3
    80006b14:	00002097          	auipc	ra,0x2
    80006b18:	c60080e7          	jalr	-928(ra) # 80008774 <__memmove>
    80006b1c:	00813083          	ld	ra,8(sp)
    80006b20:	00013403          	ld	s0,0(sp)
    80006b24:	00000513          	li	a0,0
    80006b28:	01010113          	addi	sp,sp,16
    80006b2c:	00008067          	ret
    80006b30:	00003517          	auipc	a0,0x3
    80006b34:	b8050513          	addi	a0,a0,-1152 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006b38:	00001097          	auipc	ra,0x1
    80006b3c:	934080e7          	jalr	-1740(ra) # 8000746c <panic>

0000000080006b40 <either_copyin>:
    80006b40:	ff010113          	addi	sp,sp,-16
    80006b44:	00813023          	sd	s0,0(sp)
    80006b48:	00113423          	sd	ra,8(sp)
    80006b4c:	01010413          	addi	s0,sp,16
    80006b50:	02059463          	bnez	a1,80006b78 <either_copyin+0x38>
    80006b54:	00060593          	mv	a1,a2
    80006b58:	0006861b          	sext.w	a2,a3
    80006b5c:	00002097          	auipc	ra,0x2
    80006b60:	c18080e7          	jalr	-1000(ra) # 80008774 <__memmove>
    80006b64:	00813083          	ld	ra,8(sp)
    80006b68:	00013403          	ld	s0,0(sp)
    80006b6c:	00000513          	li	a0,0
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00008067          	ret
    80006b78:	00003517          	auipc	a0,0x3
    80006b7c:	b6050513          	addi	a0,a0,-1184 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006b80:	00001097          	auipc	ra,0x1
    80006b84:	8ec080e7          	jalr	-1812(ra) # 8000746c <panic>

0000000080006b88 <trapinit>:
    80006b88:	ff010113          	addi	sp,sp,-16
    80006b8c:	00813423          	sd	s0,8(sp)
    80006b90:	01010413          	addi	s0,sp,16
    80006b94:	00813403          	ld	s0,8(sp)
    80006b98:	00003597          	auipc	a1,0x3
    80006b9c:	b6858593          	addi	a1,a1,-1176 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006ba0:	0000e517          	auipc	a0,0xe
    80006ba4:	2d050513          	addi	a0,a0,720 # 80014e70 <tickslock>
    80006ba8:	01010113          	addi	sp,sp,16
    80006bac:	00001317          	auipc	t1,0x1
    80006bb0:	5cc30067          	jr	1484(t1) # 80008178 <initlock>

0000000080006bb4 <trapinithart>:
    80006bb4:	ff010113          	addi	sp,sp,-16
    80006bb8:	00813423          	sd	s0,8(sp)
    80006bbc:	01010413          	addi	s0,sp,16
    80006bc0:	00000797          	auipc	a5,0x0
    80006bc4:	30078793          	addi	a5,a5,768 # 80006ec0 <kernelvec>
    80006bc8:	10579073          	csrw	stvec,a5
    80006bcc:	00813403          	ld	s0,8(sp)
    80006bd0:	01010113          	addi	sp,sp,16
    80006bd4:	00008067          	ret

0000000080006bd8 <usertrap>:
    80006bd8:	ff010113          	addi	sp,sp,-16
    80006bdc:	00813423          	sd	s0,8(sp)
    80006be0:	01010413          	addi	s0,sp,16
    80006be4:	00813403          	ld	s0,8(sp)
    80006be8:	01010113          	addi	sp,sp,16
    80006bec:	00008067          	ret

0000000080006bf0 <usertrapret>:
    80006bf0:	ff010113          	addi	sp,sp,-16
    80006bf4:	00813423          	sd	s0,8(sp)
    80006bf8:	01010413          	addi	s0,sp,16
    80006bfc:	00813403          	ld	s0,8(sp)
    80006c00:	01010113          	addi	sp,sp,16
    80006c04:	00008067          	ret

0000000080006c08 <kerneltrap>:
    80006c08:	fe010113          	addi	sp,sp,-32
    80006c0c:	00813823          	sd	s0,16(sp)
    80006c10:	00113c23          	sd	ra,24(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	02010413          	addi	s0,sp,32
    80006c1c:	142025f3          	csrr	a1,scause
    80006c20:	100027f3          	csrr	a5,sstatus
    80006c24:	0027f793          	andi	a5,a5,2
    80006c28:	10079c63          	bnez	a5,80006d40 <kerneltrap+0x138>
    80006c2c:	142027f3          	csrr	a5,scause
    80006c30:	0207ce63          	bltz	a5,80006c6c <kerneltrap+0x64>
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	b1450513          	addi	a0,a0,-1260 # 80009748 <CONSOLE_STATUS+0x738>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	88c080e7          	jalr	-1908(ra) # 800074c8 <__printf>
    80006c44:	141025f3          	csrr	a1,sepc
    80006c48:	14302673          	csrr	a2,stval
    80006c4c:	00003517          	auipc	a0,0x3
    80006c50:	b0c50513          	addi	a0,a0,-1268 # 80009758 <CONSOLE_STATUS+0x748>
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	874080e7          	jalr	-1932(ra) # 800074c8 <__printf>
    80006c5c:	00003517          	auipc	a0,0x3
    80006c60:	b1450513          	addi	a0,a0,-1260 # 80009770 <CONSOLE_STATUS+0x760>
    80006c64:	00001097          	auipc	ra,0x1
    80006c68:	808080e7          	jalr	-2040(ra) # 8000746c <panic>
    80006c6c:	0ff7f713          	andi	a4,a5,255
    80006c70:	00900693          	li	a3,9
    80006c74:	04d70063          	beq	a4,a3,80006cb4 <kerneltrap+0xac>
    80006c78:	fff00713          	li	a4,-1
    80006c7c:	03f71713          	slli	a4,a4,0x3f
    80006c80:	00170713          	addi	a4,a4,1
    80006c84:	fae798e3          	bne	a5,a4,80006c34 <kerneltrap+0x2c>
    80006c88:	00000097          	auipc	ra,0x0
    80006c8c:	e00080e7          	jalr	-512(ra) # 80006a88 <cpuid>
    80006c90:	06050663          	beqz	a0,80006cfc <kerneltrap+0xf4>
    80006c94:	144027f3          	csrr	a5,sip
    80006c98:	ffd7f793          	andi	a5,a5,-3
    80006c9c:	14479073          	csrw	sip,a5
    80006ca0:	01813083          	ld	ra,24(sp)
    80006ca4:	01013403          	ld	s0,16(sp)
    80006ca8:	00813483          	ld	s1,8(sp)
    80006cac:	02010113          	addi	sp,sp,32
    80006cb0:	00008067          	ret
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	3d0080e7          	jalr	976(ra) # 80007084 <plic_claim>
    80006cbc:	00a00793          	li	a5,10
    80006cc0:	00050493          	mv	s1,a0
    80006cc4:	06f50863          	beq	a0,a5,80006d34 <kerneltrap+0x12c>
    80006cc8:	fc050ce3          	beqz	a0,80006ca0 <kerneltrap+0x98>
    80006ccc:	00050593          	mv	a1,a0
    80006cd0:	00003517          	auipc	a0,0x3
    80006cd4:	a5850513          	addi	a0,a0,-1448 # 80009728 <CONSOLE_STATUS+0x718>
    80006cd8:	00000097          	auipc	ra,0x0
    80006cdc:	7f0080e7          	jalr	2032(ra) # 800074c8 <__printf>
    80006ce0:	01013403          	ld	s0,16(sp)
    80006ce4:	01813083          	ld	ra,24(sp)
    80006ce8:	00048513          	mv	a0,s1
    80006cec:	00813483          	ld	s1,8(sp)
    80006cf0:	02010113          	addi	sp,sp,32
    80006cf4:	00000317          	auipc	t1,0x0
    80006cf8:	3c830067          	jr	968(t1) # 800070bc <plic_complete>
    80006cfc:	0000e517          	auipc	a0,0xe
    80006d00:	17450513          	addi	a0,a0,372 # 80014e70 <tickslock>
    80006d04:	00001097          	auipc	ra,0x1
    80006d08:	498080e7          	jalr	1176(ra) # 8000819c <acquire>
    80006d0c:	00005717          	auipc	a4,0x5
    80006d10:	fb870713          	addi	a4,a4,-72 # 8000bcc4 <ticks>
    80006d14:	00072783          	lw	a5,0(a4)
    80006d18:	0000e517          	auipc	a0,0xe
    80006d1c:	15850513          	addi	a0,a0,344 # 80014e70 <tickslock>
    80006d20:	0017879b          	addiw	a5,a5,1
    80006d24:	00f72023          	sw	a5,0(a4)
    80006d28:	00001097          	auipc	ra,0x1
    80006d2c:	540080e7          	jalr	1344(ra) # 80008268 <release>
    80006d30:	f65ff06f          	j	80006c94 <kerneltrap+0x8c>
    80006d34:	00001097          	auipc	ra,0x1
    80006d38:	09c080e7          	jalr	156(ra) # 80007dd0 <uartintr>
    80006d3c:	fa5ff06f          	j	80006ce0 <kerneltrap+0xd8>
    80006d40:	00003517          	auipc	a0,0x3
    80006d44:	9c850513          	addi	a0,a0,-1592 # 80009708 <CONSOLE_STATUS+0x6f8>
    80006d48:	00000097          	auipc	ra,0x0
    80006d4c:	724080e7          	jalr	1828(ra) # 8000746c <panic>

0000000080006d50 <clockintr>:
    80006d50:	fe010113          	addi	sp,sp,-32
    80006d54:	00813823          	sd	s0,16(sp)
    80006d58:	00913423          	sd	s1,8(sp)
    80006d5c:	00113c23          	sd	ra,24(sp)
    80006d60:	02010413          	addi	s0,sp,32
    80006d64:	0000e497          	auipc	s1,0xe
    80006d68:	10c48493          	addi	s1,s1,268 # 80014e70 <tickslock>
    80006d6c:	00048513          	mv	a0,s1
    80006d70:	00001097          	auipc	ra,0x1
    80006d74:	42c080e7          	jalr	1068(ra) # 8000819c <acquire>
    80006d78:	00005717          	auipc	a4,0x5
    80006d7c:	f4c70713          	addi	a4,a4,-180 # 8000bcc4 <ticks>
    80006d80:	00072783          	lw	a5,0(a4)
    80006d84:	01013403          	ld	s0,16(sp)
    80006d88:	01813083          	ld	ra,24(sp)
    80006d8c:	00048513          	mv	a0,s1
    80006d90:	0017879b          	addiw	a5,a5,1
    80006d94:	00813483          	ld	s1,8(sp)
    80006d98:	00f72023          	sw	a5,0(a4)
    80006d9c:	02010113          	addi	sp,sp,32
    80006da0:	00001317          	auipc	t1,0x1
    80006da4:	4c830067          	jr	1224(t1) # 80008268 <release>

0000000080006da8 <devintr>:
    80006da8:	142027f3          	csrr	a5,scause
    80006dac:	00000513          	li	a0,0
    80006db0:	0007c463          	bltz	a5,80006db8 <devintr+0x10>
    80006db4:	00008067          	ret
    80006db8:	fe010113          	addi	sp,sp,-32
    80006dbc:	00813823          	sd	s0,16(sp)
    80006dc0:	00113c23          	sd	ra,24(sp)
    80006dc4:	00913423          	sd	s1,8(sp)
    80006dc8:	02010413          	addi	s0,sp,32
    80006dcc:	0ff7f713          	andi	a4,a5,255
    80006dd0:	00900693          	li	a3,9
    80006dd4:	04d70c63          	beq	a4,a3,80006e2c <devintr+0x84>
    80006dd8:	fff00713          	li	a4,-1
    80006ddc:	03f71713          	slli	a4,a4,0x3f
    80006de0:	00170713          	addi	a4,a4,1
    80006de4:	00e78c63          	beq	a5,a4,80006dfc <devintr+0x54>
    80006de8:	01813083          	ld	ra,24(sp)
    80006dec:	01013403          	ld	s0,16(sp)
    80006df0:	00813483          	ld	s1,8(sp)
    80006df4:	02010113          	addi	sp,sp,32
    80006df8:	00008067          	ret
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	c8c080e7          	jalr	-884(ra) # 80006a88 <cpuid>
    80006e04:	06050663          	beqz	a0,80006e70 <devintr+0xc8>
    80006e08:	144027f3          	csrr	a5,sip
    80006e0c:	ffd7f793          	andi	a5,a5,-3
    80006e10:	14479073          	csrw	sip,a5
    80006e14:	01813083          	ld	ra,24(sp)
    80006e18:	01013403          	ld	s0,16(sp)
    80006e1c:	00813483          	ld	s1,8(sp)
    80006e20:	00200513          	li	a0,2
    80006e24:	02010113          	addi	sp,sp,32
    80006e28:	00008067          	ret
    80006e2c:	00000097          	auipc	ra,0x0
    80006e30:	258080e7          	jalr	600(ra) # 80007084 <plic_claim>
    80006e34:	00a00793          	li	a5,10
    80006e38:	00050493          	mv	s1,a0
    80006e3c:	06f50663          	beq	a0,a5,80006ea8 <devintr+0x100>
    80006e40:	00100513          	li	a0,1
    80006e44:	fa0482e3          	beqz	s1,80006de8 <devintr+0x40>
    80006e48:	00048593          	mv	a1,s1
    80006e4c:	00003517          	auipc	a0,0x3
    80006e50:	8dc50513          	addi	a0,a0,-1828 # 80009728 <CONSOLE_STATUS+0x718>
    80006e54:	00000097          	auipc	ra,0x0
    80006e58:	674080e7          	jalr	1652(ra) # 800074c8 <__printf>
    80006e5c:	00048513          	mv	a0,s1
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	25c080e7          	jalr	604(ra) # 800070bc <plic_complete>
    80006e68:	00100513          	li	a0,1
    80006e6c:	f7dff06f          	j	80006de8 <devintr+0x40>
    80006e70:	0000e517          	auipc	a0,0xe
    80006e74:	00050513          	mv	a0,a0
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	324080e7          	jalr	804(ra) # 8000819c <acquire>
    80006e80:	00005717          	auipc	a4,0x5
    80006e84:	e4470713          	addi	a4,a4,-444 # 8000bcc4 <ticks>
    80006e88:	00072783          	lw	a5,0(a4)
    80006e8c:	0000e517          	auipc	a0,0xe
    80006e90:	fe450513          	addi	a0,a0,-28 # 80014e70 <tickslock>
    80006e94:	0017879b          	addiw	a5,a5,1
    80006e98:	00f72023          	sw	a5,0(a4)
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	3cc080e7          	jalr	972(ra) # 80008268 <release>
    80006ea4:	f65ff06f          	j	80006e08 <devintr+0x60>
    80006ea8:	00001097          	auipc	ra,0x1
    80006eac:	f28080e7          	jalr	-216(ra) # 80007dd0 <uartintr>
    80006eb0:	fadff06f          	j	80006e5c <devintr+0xb4>
	...

0000000080006ec0 <kernelvec>:
    80006ec0:	f0010113          	addi	sp,sp,-256
    80006ec4:	00113023          	sd	ra,0(sp)
    80006ec8:	00213423          	sd	sp,8(sp)
    80006ecc:	00313823          	sd	gp,16(sp)
    80006ed0:	00413c23          	sd	tp,24(sp)
    80006ed4:	02513023          	sd	t0,32(sp)
    80006ed8:	02613423          	sd	t1,40(sp)
    80006edc:	02713823          	sd	t2,48(sp)
    80006ee0:	02813c23          	sd	s0,56(sp)
    80006ee4:	04913023          	sd	s1,64(sp)
    80006ee8:	04a13423          	sd	a0,72(sp)
    80006eec:	04b13823          	sd	a1,80(sp)
    80006ef0:	04c13c23          	sd	a2,88(sp)
    80006ef4:	06d13023          	sd	a3,96(sp)
    80006ef8:	06e13423          	sd	a4,104(sp)
    80006efc:	06f13823          	sd	a5,112(sp)
    80006f00:	07013c23          	sd	a6,120(sp)
    80006f04:	09113023          	sd	a7,128(sp)
    80006f08:	09213423          	sd	s2,136(sp)
    80006f0c:	09313823          	sd	s3,144(sp)
    80006f10:	09413c23          	sd	s4,152(sp)
    80006f14:	0b513023          	sd	s5,160(sp)
    80006f18:	0b613423          	sd	s6,168(sp)
    80006f1c:	0b713823          	sd	s7,176(sp)
    80006f20:	0b813c23          	sd	s8,184(sp)
    80006f24:	0d913023          	sd	s9,192(sp)
    80006f28:	0da13423          	sd	s10,200(sp)
    80006f2c:	0db13823          	sd	s11,208(sp)
    80006f30:	0dc13c23          	sd	t3,216(sp)
    80006f34:	0fd13023          	sd	t4,224(sp)
    80006f38:	0fe13423          	sd	t5,232(sp)
    80006f3c:	0ff13823          	sd	t6,240(sp)
    80006f40:	cc9ff0ef          	jal	ra,80006c08 <kerneltrap>
    80006f44:	00013083          	ld	ra,0(sp)
    80006f48:	00813103          	ld	sp,8(sp)
    80006f4c:	01013183          	ld	gp,16(sp)
    80006f50:	02013283          	ld	t0,32(sp)
    80006f54:	02813303          	ld	t1,40(sp)
    80006f58:	03013383          	ld	t2,48(sp)
    80006f5c:	03813403          	ld	s0,56(sp)
    80006f60:	04013483          	ld	s1,64(sp)
    80006f64:	04813503          	ld	a0,72(sp)
    80006f68:	05013583          	ld	a1,80(sp)
    80006f6c:	05813603          	ld	a2,88(sp)
    80006f70:	06013683          	ld	a3,96(sp)
    80006f74:	06813703          	ld	a4,104(sp)
    80006f78:	07013783          	ld	a5,112(sp)
    80006f7c:	07813803          	ld	a6,120(sp)
    80006f80:	08013883          	ld	a7,128(sp)
    80006f84:	08813903          	ld	s2,136(sp)
    80006f88:	09013983          	ld	s3,144(sp)
    80006f8c:	09813a03          	ld	s4,152(sp)
    80006f90:	0a013a83          	ld	s5,160(sp)
    80006f94:	0a813b03          	ld	s6,168(sp)
    80006f98:	0b013b83          	ld	s7,176(sp)
    80006f9c:	0b813c03          	ld	s8,184(sp)
    80006fa0:	0c013c83          	ld	s9,192(sp)
    80006fa4:	0c813d03          	ld	s10,200(sp)
    80006fa8:	0d013d83          	ld	s11,208(sp)
    80006fac:	0d813e03          	ld	t3,216(sp)
    80006fb0:	0e013e83          	ld	t4,224(sp)
    80006fb4:	0e813f03          	ld	t5,232(sp)
    80006fb8:	0f013f83          	ld	t6,240(sp)
    80006fbc:	10010113          	addi	sp,sp,256
    80006fc0:	10200073          	sret
    80006fc4:	00000013          	nop
    80006fc8:	00000013          	nop
    80006fcc:	00000013          	nop

0000000080006fd0 <timervec>:
    80006fd0:	34051573          	csrrw	a0,mscratch,a0
    80006fd4:	00b53023          	sd	a1,0(a0)
    80006fd8:	00c53423          	sd	a2,8(a0)
    80006fdc:	00d53823          	sd	a3,16(a0)
    80006fe0:	01853583          	ld	a1,24(a0)
    80006fe4:	02053603          	ld	a2,32(a0)
    80006fe8:	0005b683          	ld	a3,0(a1)
    80006fec:	00c686b3          	add	a3,a3,a2
    80006ff0:	00d5b023          	sd	a3,0(a1)
    80006ff4:	00200593          	li	a1,2
    80006ff8:	14459073          	csrw	sip,a1
    80006ffc:	01053683          	ld	a3,16(a0)
    80007000:	00853603          	ld	a2,8(a0)
    80007004:	00053583          	ld	a1,0(a0)
    80007008:	34051573          	csrrw	a0,mscratch,a0
    8000700c:	30200073          	mret

0000000080007010 <plicinit>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813423          	sd	s0,8(sp)
    80007018:	01010413          	addi	s0,sp,16
    8000701c:	00813403          	ld	s0,8(sp)
    80007020:	0c0007b7          	lui	a5,0xc000
    80007024:	00100713          	li	a4,1
    80007028:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000702c:	00e7a223          	sw	a4,4(a5)
    80007030:	01010113          	addi	sp,sp,16
    80007034:	00008067          	ret

0000000080007038 <plicinithart>:
    80007038:	ff010113          	addi	sp,sp,-16
    8000703c:	00813023          	sd	s0,0(sp)
    80007040:	00113423          	sd	ra,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00000097          	auipc	ra,0x0
    8000704c:	a40080e7          	jalr	-1472(ra) # 80006a88 <cpuid>
    80007050:	0085171b          	slliw	a4,a0,0x8
    80007054:	0c0027b7          	lui	a5,0xc002
    80007058:	00e787b3          	add	a5,a5,a4
    8000705c:	40200713          	li	a4,1026
    80007060:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007064:	00813083          	ld	ra,8(sp)
    80007068:	00013403          	ld	s0,0(sp)
    8000706c:	00d5151b          	slliw	a0,a0,0xd
    80007070:	0c2017b7          	lui	a5,0xc201
    80007074:	00a78533          	add	a0,a5,a0
    80007078:	00052023          	sw	zero,0(a0)
    8000707c:	01010113          	addi	sp,sp,16
    80007080:	00008067          	ret

0000000080007084 <plic_claim>:
    80007084:	ff010113          	addi	sp,sp,-16
    80007088:	00813023          	sd	s0,0(sp)
    8000708c:	00113423          	sd	ra,8(sp)
    80007090:	01010413          	addi	s0,sp,16
    80007094:	00000097          	auipc	ra,0x0
    80007098:	9f4080e7          	jalr	-1548(ra) # 80006a88 <cpuid>
    8000709c:	00813083          	ld	ra,8(sp)
    800070a0:	00013403          	ld	s0,0(sp)
    800070a4:	00d5151b          	slliw	a0,a0,0xd
    800070a8:	0c2017b7          	lui	a5,0xc201
    800070ac:	00a78533          	add	a0,a5,a0
    800070b0:	00452503          	lw	a0,4(a0)
    800070b4:	01010113          	addi	sp,sp,16
    800070b8:	00008067          	ret

00000000800070bc <plic_complete>:
    800070bc:	fe010113          	addi	sp,sp,-32
    800070c0:	00813823          	sd	s0,16(sp)
    800070c4:	00913423          	sd	s1,8(sp)
    800070c8:	00113c23          	sd	ra,24(sp)
    800070cc:	02010413          	addi	s0,sp,32
    800070d0:	00050493          	mv	s1,a0
    800070d4:	00000097          	auipc	ra,0x0
    800070d8:	9b4080e7          	jalr	-1612(ra) # 80006a88 <cpuid>
    800070dc:	01813083          	ld	ra,24(sp)
    800070e0:	01013403          	ld	s0,16(sp)
    800070e4:	00d5179b          	slliw	a5,a0,0xd
    800070e8:	0c201737          	lui	a4,0xc201
    800070ec:	00f707b3          	add	a5,a4,a5
    800070f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800070f4:	00813483          	ld	s1,8(sp)
    800070f8:	02010113          	addi	sp,sp,32
    800070fc:	00008067          	ret

0000000080007100 <consolewrite>:
    80007100:	fb010113          	addi	sp,sp,-80
    80007104:	04813023          	sd	s0,64(sp)
    80007108:	04113423          	sd	ra,72(sp)
    8000710c:	02913c23          	sd	s1,56(sp)
    80007110:	03213823          	sd	s2,48(sp)
    80007114:	03313423          	sd	s3,40(sp)
    80007118:	03413023          	sd	s4,32(sp)
    8000711c:	01513c23          	sd	s5,24(sp)
    80007120:	05010413          	addi	s0,sp,80
    80007124:	06c05c63          	blez	a2,8000719c <consolewrite+0x9c>
    80007128:	00060993          	mv	s3,a2
    8000712c:	00050a13          	mv	s4,a0
    80007130:	00058493          	mv	s1,a1
    80007134:	00000913          	li	s2,0
    80007138:	fff00a93          	li	s5,-1
    8000713c:	01c0006f          	j	80007158 <consolewrite+0x58>
    80007140:	fbf44503          	lbu	a0,-65(s0)
    80007144:	0019091b          	addiw	s2,s2,1
    80007148:	00148493          	addi	s1,s1,1
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	a9c080e7          	jalr	-1380(ra) # 80007be8 <uartputc>
    80007154:	03298063          	beq	s3,s2,80007174 <consolewrite+0x74>
    80007158:	00048613          	mv	a2,s1
    8000715c:	00100693          	li	a3,1
    80007160:	000a0593          	mv	a1,s4
    80007164:	fbf40513          	addi	a0,s0,-65
    80007168:	00000097          	auipc	ra,0x0
    8000716c:	9d8080e7          	jalr	-1576(ra) # 80006b40 <either_copyin>
    80007170:	fd5518e3          	bne	a0,s5,80007140 <consolewrite+0x40>
    80007174:	04813083          	ld	ra,72(sp)
    80007178:	04013403          	ld	s0,64(sp)
    8000717c:	03813483          	ld	s1,56(sp)
    80007180:	02813983          	ld	s3,40(sp)
    80007184:	02013a03          	ld	s4,32(sp)
    80007188:	01813a83          	ld	s5,24(sp)
    8000718c:	00090513          	mv	a0,s2
    80007190:	03013903          	ld	s2,48(sp)
    80007194:	05010113          	addi	sp,sp,80
    80007198:	00008067          	ret
    8000719c:	00000913          	li	s2,0
    800071a0:	fd5ff06f          	j	80007174 <consolewrite+0x74>

00000000800071a4 <consoleread>:
    800071a4:	f9010113          	addi	sp,sp,-112
    800071a8:	06813023          	sd	s0,96(sp)
    800071ac:	04913c23          	sd	s1,88(sp)
    800071b0:	05213823          	sd	s2,80(sp)
    800071b4:	05313423          	sd	s3,72(sp)
    800071b8:	05413023          	sd	s4,64(sp)
    800071bc:	03513c23          	sd	s5,56(sp)
    800071c0:	03613823          	sd	s6,48(sp)
    800071c4:	03713423          	sd	s7,40(sp)
    800071c8:	03813023          	sd	s8,32(sp)
    800071cc:	06113423          	sd	ra,104(sp)
    800071d0:	01913c23          	sd	s9,24(sp)
    800071d4:	07010413          	addi	s0,sp,112
    800071d8:	00060b93          	mv	s7,a2
    800071dc:	00050913          	mv	s2,a0
    800071e0:	00058c13          	mv	s8,a1
    800071e4:	00060b1b          	sext.w	s6,a2
    800071e8:	0000e497          	auipc	s1,0xe
    800071ec:	cb048493          	addi	s1,s1,-848 # 80014e98 <cons>
    800071f0:	00400993          	li	s3,4
    800071f4:	fff00a13          	li	s4,-1
    800071f8:	00a00a93          	li	s5,10
    800071fc:	05705e63          	blez	s7,80007258 <consoleread+0xb4>
    80007200:	09c4a703          	lw	a4,156(s1)
    80007204:	0984a783          	lw	a5,152(s1)
    80007208:	0007071b          	sext.w	a4,a4
    8000720c:	08e78463          	beq	a5,a4,80007294 <consoleread+0xf0>
    80007210:	07f7f713          	andi	a4,a5,127
    80007214:	00e48733          	add	a4,s1,a4
    80007218:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000721c:	0017869b          	addiw	a3,a5,1
    80007220:	08d4ac23          	sw	a3,152(s1)
    80007224:	00070c9b          	sext.w	s9,a4
    80007228:	0b370663          	beq	a4,s3,800072d4 <consoleread+0x130>
    8000722c:	00100693          	li	a3,1
    80007230:	f9f40613          	addi	a2,s0,-97
    80007234:	000c0593          	mv	a1,s8
    80007238:	00090513          	mv	a0,s2
    8000723c:	f8e40fa3          	sb	a4,-97(s0)
    80007240:	00000097          	auipc	ra,0x0
    80007244:	8b4080e7          	jalr	-1868(ra) # 80006af4 <either_copyout>
    80007248:	01450863          	beq	a0,s4,80007258 <consoleread+0xb4>
    8000724c:	001c0c13          	addi	s8,s8,1
    80007250:	fffb8b9b          	addiw	s7,s7,-1
    80007254:	fb5c94e3          	bne	s9,s5,800071fc <consoleread+0x58>
    80007258:	000b851b          	sext.w	a0,s7
    8000725c:	06813083          	ld	ra,104(sp)
    80007260:	06013403          	ld	s0,96(sp)
    80007264:	05813483          	ld	s1,88(sp)
    80007268:	05013903          	ld	s2,80(sp)
    8000726c:	04813983          	ld	s3,72(sp)
    80007270:	04013a03          	ld	s4,64(sp)
    80007274:	03813a83          	ld	s5,56(sp)
    80007278:	02813b83          	ld	s7,40(sp)
    8000727c:	02013c03          	ld	s8,32(sp)
    80007280:	01813c83          	ld	s9,24(sp)
    80007284:	40ab053b          	subw	a0,s6,a0
    80007288:	03013b03          	ld	s6,48(sp)
    8000728c:	07010113          	addi	sp,sp,112
    80007290:	00008067          	ret
    80007294:	00001097          	auipc	ra,0x1
    80007298:	1d8080e7          	jalr	472(ra) # 8000846c <push_on>
    8000729c:	0984a703          	lw	a4,152(s1)
    800072a0:	09c4a783          	lw	a5,156(s1)
    800072a4:	0007879b          	sext.w	a5,a5
    800072a8:	fef70ce3          	beq	a4,a5,800072a0 <consoleread+0xfc>
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	234080e7          	jalr	564(ra) # 800084e0 <pop_on>
    800072b4:	0984a783          	lw	a5,152(s1)
    800072b8:	07f7f713          	andi	a4,a5,127
    800072bc:	00e48733          	add	a4,s1,a4
    800072c0:	01874703          	lbu	a4,24(a4)
    800072c4:	0017869b          	addiw	a3,a5,1
    800072c8:	08d4ac23          	sw	a3,152(s1)
    800072cc:	00070c9b          	sext.w	s9,a4
    800072d0:	f5371ee3          	bne	a4,s3,8000722c <consoleread+0x88>
    800072d4:	000b851b          	sext.w	a0,s7
    800072d8:	f96bf2e3          	bgeu	s7,s6,8000725c <consoleread+0xb8>
    800072dc:	08f4ac23          	sw	a5,152(s1)
    800072e0:	f7dff06f          	j	8000725c <consoleread+0xb8>

00000000800072e4 <consputc>:
    800072e4:	10000793          	li	a5,256
    800072e8:	00f50663          	beq	a0,a5,800072f4 <consputc+0x10>
    800072ec:	00001317          	auipc	t1,0x1
    800072f0:	9f430067          	jr	-1548(t1) # 80007ce0 <uartputc_sync>
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00113423          	sd	ra,8(sp)
    800072fc:	00813023          	sd	s0,0(sp)
    80007300:	01010413          	addi	s0,sp,16
    80007304:	00800513          	li	a0,8
    80007308:	00001097          	auipc	ra,0x1
    8000730c:	9d8080e7          	jalr	-1576(ra) # 80007ce0 <uartputc_sync>
    80007310:	02000513          	li	a0,32
    80007314:	00001097          	auipc	ra,0x1
    80007318:	9cc080e7          	jalr	-1588(ra) # 80007ce0 <uartputc_sync>
    8000731c:	00013403          	ld	s0,0(sp)
    80007320:	00813083          	ld	ra,8(sp)
    80007324:	00800513          	li	a0,8
    80007328:	01010113          	addi	sp,sp,16
    8000732c:	00001317          	auipc	t1,0x1
    80007330:	9b430067          	jr	-1612(t1) # 80007ce0 <uartputc_sync>

0000000080007334 <consoleintr>:
    80007334:	fe010113          	addi	sp,sp,-32
    80007338:	00813823          	sd	s0,16(sp)
    8000733c:	00913423          	sd	s1,8(sp)
    80007340:	01213023          	sd	s2,0(sp)
    80007344:	00113c23          	sd	ra,24(sp)
    80007348:	02010413          	addi	s0,sp,32
    8000734c:	0000e917          	auipc	s2,0xe
    80007350:	b4c90913          	addi	s2,s2,-1204 # 80014e98 <cons>
    80007354:	00050493          	mv	s1,a0
    80007358:	00090513          	mv	a0,s2
    8000735c:	00001097          	auipc	ra,0x1
    80007360:	e40080e7          	jalr	-448(ra) # 8000819c <acquire>
    80007364:	02048c63          	beqz	s1,8000739c <consoleintr+0x68>
    80007368:	0a092783          	lw	a5,160(s2)
    8000736c:	09892703          	lw	a4,152(s2)
    80007370:	07f00693          	li	a3,127
    80007374:	40e7873b          	subw	a4,a5,a4
    80007378:	02e6e263          	bltu	a3,a4,8000739c <consoleintr+0x68>
    8000737c:	00d00713          	li	a4,13
    80007380:	04e48063          	beq	s1,a4,800073c0 <consoleintr+0x8c>
    80007384:	07f7f713          	andi	a4,a5,127
    80007388:	00e90733          	add	a4,s2,a4
    8000738c:	0017879b          	addiw	a5,a5,1
    80007390:	0af92023          	sw	a5,160(s2)
    80007394:	00970c23          	sb	s1,24(a4)
    80007398:	08f92e23          	sw	a5,156(s2)
    8000739c:	01013403          	ld	s0,16(sp)
    800073a0:	01813083          	ld	ra,24(sp)
    800073a4:	00813483          	ld	s1,8(sp)
    800073a8:	00013903          	ld	s2,0(sp)
    800073ac:	0000e517          	auipc	a0,0xe
    800073b0:	aec50513          	addi	a0,a0,-1300 # 80014e98 <cons>
    800073b4:	02010113          	addi	sp,sp,32
    800073b8:	00001317          	auipc	t1,0x1
    800073bc:	eb030067          	jr	-336(t1) # 80008268 <release>
    800073c0:	00a00493          	li	s1,10
    800073c4:	fc1ff06f          	j	80007384 <consoleintr+0x50>

00000000800073c8 <consoleinit>:
    800073c8:	fe010113          	addi	sp,sp,-32
    800073cc:	00113c23          	sd	ra,24(sp)
    800073d0:	00813823          	sd	s0,16(sp)
    800073d4:	00913423          	sd	s1,8(sp)
    800073d8:	02010413          	addi	s0,sp,32
    800073dc:	0000e497          	auipc	s1,0xe
    800073e0:	abc48493          	addi	s1,s1,-1348 # 80014e98 <cons>
    800073e4:	00048513          	mv	a0,s1
    800073e8:	00002597          	auipc	a1,0x2
    800073ec:	39858593          	addi	a1,a1,920 # 80009780 <CONSOLE_STATUS+0x770>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	d88080e7          	jalr	-632(ra) # 80008178 <initlock>
    800073f8:	00000097          	auipc	ra,0x0
    800073fc:	7ac080e7          	jalr	1964(ra) # 80007ba4 <uartinit>
    80007400:	01813083          	ld	ra,24(sp)
    80007404:	01013403          	ld	s0,16(sp)
    80007408:	00000797          	auipc	a5,0x0
    8000740c:	d9c78793          	addi	a5,a5,-612 # 800071a4 <consoleread>
    80007410:	0af4bc23          	sd	a5,184(s1)
    80007414:	00000797          	auipc	a5,0x0
    80007418:	cec78793          	addi	a5,a5,-788 # 80007100 <consolewrite>
    8000741c:	0cf4b023          	sd	a5,192(s1)
    80007420:	00813483          	ld	s1,8(sp)
    80007424:	02010113          	addi	sp,sp,32
    80007428:	00008067          	ret

000000008000742c <console_read>:
    8000742c:	ff010113          	addi	sp,sp,-16
    80007430:	00813423          	sd	s0,8(sp)
    80007434:	01010413          	addi	s0,sp,16
    80007438:	00813403          	ld	s0,8(sp)
    8000743c:	0000e317          	auipc	t1,0xe
    80007440:	b1433303          	ld	t1,-1260(t1) # 80014f50 <devsw+0x10>
    80007444:	01010113          	addi	sp,sp,16
    80007448:	00030067          	jr	t1

000000008000744c <console_write>:
    8000744c:	ff010113          	addi	sp,sp,-16
    80007450:	00813423          	sd	s0,8(sp)
    80007454:	01010413          	addi	s0,sp,16
    80007458:	00813403          	ld	s0,8(sp)
    8000745c:	0000e317          	auipc	t1,0xe
    80007460:	afc33303          	ld	t1,-1284(t1) # 80014f58 <devsw+0x18>
    80007464:	01010113          	addi	sp,sp,16
    80007468:	00030067          	jr	t1

000000008000746c <panic>:
    8000746c:	fe010113          	addi	sp,sp,-32
    80007470:	00113c23          	sd	ra,24(sp)
    80007474:	00813823          	sd	s0,16(sp)
    80007478:	00913423          	sd	s1,8(sp)
    8000747c:	02010413          	addi	s0,sp,32
    80007480:	00050493          	mv	s1,a0
    80007484:	00002517          	auipc	a0,0x2
    80007488:	30450513          	addi	a0,a0,772 # 80009788 <CONSOLE_STATUS+0x778>
    8000748c:	0000e797          	auipc	a5,0xe
    80007490:	b607a623          	sw	zero,-1172(a5) # 80014ff8 <pr+0x18>
    80007494:	00000097          	auipc	ra,0x0
    80007498:	034080e7          	jalr	52(ra) # 800074c8 <__printf>
    8000749c:	00048513          	mv	a0,s1
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	028080e7          	jalr	40(ra) # 800074c8 <__printf>
    800074a8:	00002517          	auipc	a0,0x2
    800074ac:	cd850513          	addi	a0,a0,-808 # 80009180 <CONSOLE_STATUS+0x170>
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	018080e7          	jalr	24(ra) # 800074c8 <__printf>
    800074b8:	00100793          	li	a5,1
    800074bc:	00005717          	auipc	a4,0x5
    800074c0:	80f72623          	sw	a5,-2036(a4) # 8000bcc8 <panicked>
    800074c4:	0000006f          	j	800074c4 <panic+0x58>

00000000800074c8 <__printf>:
    800074c8:	f3010113          	addi	sp,sp,-208
    800074cc:	08813023          	sd	s0,128(sp)
    800074d0:	07313423          	sd	s3,104(sp)
    800074d4:	09010413          	addi	s0,sp,144
    800074d8:	05813023          	sd	s8,64(sp)
    800074dc:	08113423          	sd	ra,136(sp)
    800074e0:	06913c23          	sd	s1,120(sp)
    800074e4:	07213823          	sd	s2,112(sp)
    800074e8:	07413023          	sd	s4,96(sp)
    800074ec:	05513c23          	sd	s5,88(sp)
    800074f0:	05613823          	sd	s6,80(sp)
    800074f4:	05713423          	sd	s7,72(sp)
    800074f8:	03913c23          	sd	s9,56(sp)
    800074fc:	03a13823          	sd	s10,48(sp)
    80007500:	03b13423          	sd	s11,40(sp)
    80007504:	0000e317          	auipc	t1,0xe
    80007508:	adc30313          	addi	t1,t1,-1316 # 80014fe0 <pr>
    8000750c:	01832c03          	lw	s8,24(t1)
    80007510:	00b43423          	sd	a1,8(s0)
    80007514:	00c43823          	sd	a2,16(s0)
    80007518:	00d43c23          	sd	a3,24(s0)
    8000751c:	02e43023          	sd	a4,32(s0)
    80007520:	02f43423          	sd	a5,40(s0)
    80007524:	03043823          	sd	a6,48(s0)
    80007528:	03143c23          	sd	a7,56(s0)
    8000752c:	00050993          	mv	s3,a0
    80007530:	4a0c1663          	bnez	s8,800079dc <__printf+0x514>
    80007534:	60098c63          	beqz	s3,80007b4c <__printf+0x684>
    80007538:	0009c503          	lbu	a0,0(s3)
    8000753c:	00840793          	addi	a5,s0,8
    80007540:	f6f43c23          	sd	a5,-136(s0)
    80007544:	00000493          	li	s1,0
    80007548:	22050063          	beqz	a0,80007768 <__printf+0x2a0>
    8000754c:	00002a37          	lui	s4,0x2
    80007550:	00018ab7          	lui	s5,0x18
    80007554:	000f4b37          	lui	s6,0xf4
    80007558:	00989bb7          	lui	s7,0x989
    8000755c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007560:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007564:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007568:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000756c:	00148c9b          	addiw	s9,s1,1
    80007570:	02500793          	li	a5,37
    80007574:	01998933          	add	s2,s3,s9
    80007578:	38f51263          	bne	a0,a5,800078fc <__printf+0x434>
    8000757c:	00094783          	lbu	a5,0(s2)
    80007580:	00078c9b          	sext.w	s9,a5
    80007584:	1e078263          	beqz	a5,80007768 <__printf+0x2a0>
    80007588:	0024849b          	addiw	s1,s1,2
    8000758c:	07000713          	li	a4,112
    80007590:	00998933          	add	s2,s3,s1
    80007594:	38e78a63          	beq	a5,a4,80007928 <__printf+0x460>
    80007598:	20f76863          	bltu	a4,a5,800077a8 <__printf+0x2e0>
    8000759c:	42a78863          	beq	a5,a0,800079cc <__printf+0x504>
    800075a0:	06400713          	li	a4,100
    800075a4:	40e79663          	bne	a5,a4,800079b0 <__printf+0x4e8>
    800075a8:	f7843783          	ld	a5,-136(s0)
    800075ac:	0007a603          	lw	a2,0(a5)
    800075b0:	00878793          	addi	a5,a5,8
    800075b4:	f6f43c23          	sd	a5,-136(s0)
    800075b8:	42064a63          	bltz	a2,800079ec <__printf+0x524>
    800075bc:	00a00713          	li	a4,10
    800075c0:	02e677bb          	remuw	a5,a2,a4
    800075c4:	00002d97          	auipc	s11,0x2
    800075c8:	1ecd8d93          	addi	s11,s11,492 # 800097b0 <digits>
    800075cc:	00900593          	li	a1,9
    800075d0:	0006051b          	sext.w	a0,a2
    800075d4:	00000c93          	li	s9,0
    800075d8:	02079793          	slli	a5,a5,0x20
    800075dc:	0207d793          	srli	a5,a5,0x20
    800075e0:	00fd87b3          	add	a5,s11,a5
    800075e4:	0007c783          	lbu	a5,0(a5)
    800075e8:	02e656bb          	divuw	a3,a2,a4
    800075ec:	f8f40023          	sb	a5,-128(s0)
    800075f0:	14c5d863          	bge	a1,a2,80007740 <__printf+0x278>
    800075f4:	06300593          	li	a1,99
    800075f8:	00100c93          	li	s9,1
    800075fc:	02e6f7bb          	remuw	a5,a3,a4
    80007600:	02079793          	slli	a5,a5,0x20
    80007604:	0207d793          	srli	a5,a5,0x20
    80007608:	00fd87b3          	add	a5,s11,a5
    8000760c:	0007c783          	lbu	a5,0(a5)
    80007610:	02e6d73b          	divuw	a4,a3,a4
    80007614:	f8f400a3          	sb	a5,-127(s0)
    80007618:	12a5f463          	bgeu	a1,a0,80007740 <__printf+0x278>
    8000761c:	00a00693          	li	a3,10
    80007620:	00900593          	li	a1,9
    80007624:	02d777bb          	remuw	a5,a4,a3
    80007628:	02079793          	slli	a5,a5,0x20
    8000762c:	0207d793          	srli	a5,a5,0x20
    80007630:	00fd87b3          	add	a5,s11,a5
    80007634:	0007c503          	lbu	a0,0(a5)
    80007638:	02d757bb          	divuw	a5,a4,a3
    8000763c:	f8a40123          	sb	a0,-126(s0)
    80007640:	48e5f263          	bgeu	a1,a4,80007ac4 <__printf+0x5fc>
    80007644:	06300513          	li	a0,99
    80007648:	02d7f5bb          	remuw	a1,a5,a3
    8000764c:	02059593          	slli	a1,a1,0x20
    80007650:	0205d593          	srli	a1,a1,0x20
    80007654:	00bd85b3          	add	a1,s11,a1
    80007658:	0005c583          	lbu	a1,0(a1)
    8000765c:	02d7d7bb          	divuw	a5,a5,a3
    80007660:	f8b401a3          	sb	a1,-125(s0)
    80007664:	48e57263          	bgeu	a0,a4,80007ae8 <__printf+0x620>
    80007668:	3e700513          	li	a0,999
    8000766c:	02d7f5bb          	remuw	a1,a5,a3
    80007670:	02059593          	slli	a1,a1,0x20
    80007674:	0205d593          	srli	a1,a1,0x20
    80007678:	00bd85b3          	add	a1,s11,a1
    8000767c:	0005c583          	lbu	a1,0(a1)
    80007680:	02d7d7bb          	divuw	a5,a5,a3
    80007684:	f8b40223          	sb	a1,-124(s0)
    80007688:	46e57663          	bgeu	a0,a4,80007af4 <__printf+0x62c>
    8000768c:	02d7f5bb          	remuw	a1,a5,a3
    80007690:	02059593          	slli	a1,a1,0x20
    80007694:	0205d593          	srli	a1,a1,0x20
    80007698:	00bd85b3          	add	a1,s11,a1
    8000769c:	0005c583          	lbu	a1,0(a1)
    800076a0:	02d7d7bb          	divuw	a5,a5,a3
    800076a4:	f8b402a3          	sb	a1,-123(s0)
    800076a8:	46ea7863          	bgeu	s4,a4,80007b18 <__printf+0x650>
    800076ac:	02d7f5bb          	remuw	a1,a5,a3
    800076b0:	02059593          	slli	a1,a1,0x20
    800076b4:	0205d593          	srli	a1,a1,0x20
    800076b8:	00bd85b3          	add	a1,s11,a1
    800076bc:	0005c583          	lbu	a1,0(a1)
    800076c0:	02d7d7bb          	divuw	a5,a5,a3
    800076c4:	f8b40323          	sb	a1,-122(s0)
    800076c8:	3eeaf863          	bgeu	s5,a4,80007ab8 <__printf+0x5f0>
    800076cc:	02d7f5bb          	remuw	a1,a5,a3
    800076d0:	02059593          	slli	a1,a1,0x20
    800076d4:	0205d593          	srli	a1,a1,0x20
    800076d8:	00bd85b3          	add	a1,s11,a1
    800076dc:	0005c583          	lbu	a1,0(a1)
    800076e0:	02d7d7bb          	divuw	a5,a5,a3
    800076e4:	f8b403a3          	sb	a1,-121(s0)
    800076e8:	42eb7e63          	bgeu	s6,a4,80007b24 <__printf+0x65c>
    800076ec:	02d7f5bb          	remuw	a1,a5,a3
    800076f0:	02059593          	slli	a1,a1,0x20
    800076f4:	0205d593          	srli	a1,a1,0x20
    800076f8:	00bd85b3          	add	a1,s11,a1
    800076fc:	0005c583          	lbu	a1,0(a1)
    80007700:	02d7d7bb          	divuw	a5,a5,a3
    80007704:	f8b40423          	sb	a1,-120(s0)
    80007708:	42ebfc63          	bgeu	s7,a4,80007b40 <__printf+0x678>
    8000770c:	02079793          	slli	a5,a5,0x20
    80007710:	0207d793          	srli	a5,a5,0x20
    80007714:	00fd8db3          	add	s11,s11,a5
    80007718:	000dc703          	lbu	a4,0(s11)
    8000771c:	00a00793          	li	a5,10
    80007720:	00900c93          	li	s9,9
    80007724:	f8e404a3          	sb	a4,-119(s0)
    80007728:	00065c63          	bgez	a2,80007740 <__printf+0x278>
    8000772c:	f9040713          	addi	a4,s0,-112
    80007730:	00f70733          	add	a4,a4,a5
    80007734:	02d00693          	li	a3,45
    80007738:	fed70823          	sb	a3,-16(a4)
    8000773c:	00078c93          	mv	s9,a5
    80007740:	f8040793          	addi	a5,s0,-128
    80007744:	01978cb3          	add	s9,a5,s9
    80007748:	f7f40d13          	addi	s10,s0,-129
    8000774c:	000cc503          	lbu	a0,0(s9)
    80007750:	fffc8c93          	addi	s9,s9,-1
    80007754:	00000097          	auipc	ra,0x0
    80007758:	b90080e7          	jalr	-1136(ra) # 800072e4 <consputc>
    8000775c:	ffac98e3          	bne	s9,s10,8000774c <__printf+0x284>
    80007760:	00094503          	lbu	a0,0(s2)
    80007764:	e00514e3          	bnez	a0,8000756c <__printf+0xa4>
    80007768:	1a0c1663          	bnez	s8,80007914 <__printf+0x44c>
    8000776c:	08813083          	ld	ra,136(sp)
    80007770:	08013403          	ld	s0,128(sp)
    80007774:	07813483          	ld	s1,120(sp)
    80007778:	07013903          	ld	s2,112(sp)
    8000777c:	06813983          	ld	s3,104(sp)
    80007780:	06013a03          	ld	s4,96(sp)
    80007784:	05813a83          	ld	s5,88(sp)
    80007788:	05013b03          	ld	s6,80(sp)
    8000778c:	04813b83          	ld	s7,72(sp)
    80007790:	04013c03          	ld	s8,64(sp)
    80007794:	03813c83          	ld	s9,56(sp)
    80007798:	03013d03          	ld	s10,48(sp)
    8000779c:	02813d83          	ld	s11,40(sp)
    800077a0:	0d010113          	addi	sp,sp,208
    800077a4:	00008067          	ret
    800077a8:	07300713          	li	a4,115
    800077ac:	1ce78a63          	beq	a5,a4,80007980 <__printf+0x4b8>
    800077b0:	07800713          	li	a4,120
    800077b4:	1ee79e63          	bne	a5,a4,800079b0 <__printf+0x4e8>
    800077b8:	f7843783          	ld	a5,-136(s0)
    800077bc:	0007a703          	lw	a4,0(a5)
    800077c0:	00878793          	addi	a5,a5,8
    800077c4:	f6f43c23          	sd	a5,-136(s0)
    800077c8:	28074263          	bltz	a4,80007a4c <__printf+0x584>
    800077cc:	00002d97          	auipc	s11,0x2
    800077d0:	fe4d8d93          	addi	s11,s11,-28 # 800097b0 <digits>
    800077d4:	00f77793          	andi	a5,a4,15
    800077d8:	00fd87b3          	add	a5,s11,a5
    800077dc:	0007c683          	lbu	a3,0(a5)
    800077e0:	00f00613          	li	a2,15
    800077e4:	0007079b          	sext.w	a5,a4
    800077e8:	f8d40023          	sb	a3,-128(s0)
    800077ec:	0047559b          	srliw	a1,a4,0x4
    800077f0:	0047569b          	srliw	a3,a4,0x4
    800077f4:	00000c93          	li	s9,0
    800077f8:	0ee65063          	bge	a2,a4,800078d8 <__printf+0x410>
    800077fc:	00f6f693          	andi	a3,a3,15
    80007800:	00dd86b3          	add	a3,s11,a3
    80007804:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007808:	0087d79b          	srliw	a5,a5,0x8
    8000780c:	00100c93          	li	s9,1
    80007810:	f8d400a3          	sb	a3,-127(s0)
    80007814:	0cb67263          	bgeu	a2,a1,800078d8 <__printf+0x410>
    80007818:	00f7f693          	andi	a3,a5,15
    8000781c:	00dd86b3          	add	a3,s11,a3
    80007820:	0006c583          	lbu	a1,0(a3)
    80007824:	00f00613          	li	a2,15
    80007828:	0047d69b          	srliw	a3,a5,0x4
    8000782c:	f8b40123          	sb	a1,-126(s0)
    80007830:	0047d593          	srli	a1,a5,0x4
    80007834:	28f67e63          	bgeu	a2,a5,80007ad0 <__printf+0x608>
    80007838:	00f6f693          	andi	a3,a3,15
    8000783c:	00dd86b3          	add	a3,s11,a3
    80007840:	0006c503          	lbu	a0,0(a3)
    80007844:	0087d813          	srli	a6,a5,0x8
    80007848:	0087d69b          	srliw	a3,a5,0x8
    8000784c:	f8a401a3          	sb	a0,-125(s0)
    80007850:	28b67663          	bgeu	a2,a1,80007adc <__printf+0x614>
    80007854:	00f6f693          	andi	a3,a3,15
    80007858:	00dd86b3          	add	a3,s11,a3
    8000785c:	0006c583          	lbu	a1,0(a3)
    80007860:	00c7d513          	srli	a0,a5,0xc
    80007864:	00c7d69b          	srliw	a3,a5,0xc
    80007868:	f8b40223          	sb	a1,-124(s0)
    8000786c:	29067a63          	bgeu	a2,a6,80007b00 <__printf+0x638>
    80007870:	00f6f693          	andi	a3,a3,15
    80007874:	00dd86b3          	add	a3,s11,a3
    80007878:	0006c583          	lbu	a1,0(a3)
    8000787c:	0107d813          	srli	a6,a5,0x10
    80007880:	0107d69b          	srliw	a3,a5,0x10
    80007884:	f8b402a3          	sb	a1,-123(s0)
    80007888:	28a67263          	bgeu	a2,a0,80007b0c <__printf+0x644>
    8000788c:	00f6f693          	andi	a3,a3,15
    80007890:	00dd86b3          	add	a3,s11,a3
    80007894:	0006c683          	lbu	a3,0(a3)
    80007898:	0147d79b          	srliw	a5,a5,0x14
    8000789c:	f8d40323          	sb	a3,-122(s0)
    800078a0:	21067663          	bgeu	a2,a6,80007aac <__printf+0x5e4>
    800078a4:	02079793          	slli	a5,a5,0x20
    800078a8:	0207d793          	srli	a5,a5,0x20
    800078ac:	00fd8db3          	add	s11,s11,a5
    800078b0:	000dc683          	lbu	a3,0(s11)
    800078b4:	00800793          	li	a5,8
    800078b8:	00700c93          	li	s9,7
    800078bc:	f8d403a3          	sb	a3,-121(s0)
    800078c0:	00075c63          	bgez	a4,800078d8 <__printf+0x410>
    800078c4:	f9040713          	addi	a4,s0,-112
    800078c8:	00f70733          	add	a4,a4,a5
    800078cc:	02d00693          	li	a3,45
    800078d0:	fed70823          	sb	a3,-16(a4)
    800078d4:	00078c93          	mv	s9,a5
    800078d8:	f8040793          	addi	a5,s0,-128
    800078dc:	01978cb3          	add	s9,a5,s9
    800078e0:	f7f40d13          	addi	s10,s0,-129
    800078e4:	000cc503          	lbu	a0,0(s9)
    800078e8:	fffc8c93          	addi	s9,s9,-1
    800078ec:	00000097          	auipc	ra,0x0
    800078f0:	9f8080e7          	jalr	-1544(ra) # 800072e4 <consputc>
    800078f4:	ff9d18e3          	bne	s10,s9,800078e4 <__printf+0x41c>
    800078f8:	0100006f          	j	80007908 <__printf+0x440>
    800078fc:	00000097          	auipc	ra,0x0
    80007900:	9e8080e7          	jalr	-1560(ra) # 800072e4 <consputc>
    80007904:	000c8493          	mv	s1,s9
    80007908:	00094503          	lbu	a0,0(s2)
    8000790c:	c60510e3          	bnez	a0,8000756c <__printf+0xa4>
    80007910:	e40c0ee3          	beqz	s8,8000776c <__printf+0x2a4>
    80007914:	0000d517          	auipc	a0,0xd
    80007918:	6cc50513          	addi	a0,a0,1740 # 80014fe0 <pr>
    8000791c:	00001097          	auipc	ra,0x1
    80007920:	94c080e7          	jalr	-1716(ra) # 80008268 <release>
    80007924:	e49ff06f          	j	8000776c <__printf+0x2a4>
    80007928:	f7843783          	ld	a5,-136(s0)
    8000792c:	03000513          	li	a0,48
    80007930:	01000d13          	li	s10,16
    80007934:	00878713          	addi	a4,a5,8
    80007938:	0007bc83          	ld	s9,0(a5)
    8000793c:	f6e43c23          	sd	a4,-136(s0)
    80007940:	00000097          	auipc	ra,0x0
    80007944:	9a4080e7          	jalr	-1628(ra) # 800072e4 <consputc>
    80007948:	07800513          	li	a0,120
    8000794c:	00000097          	auipc	ra,0x0
    80007950:	998080e7          	jalr	-1640(ra) # 800072e4 <consputc>
    80007954:	00002d97          	auipc	s11,0x2
    80007958:	e5cd8d93          	addi	s11,s11,-420 # 800097b0 <digits>
    8000795c:	03ccd793          	srli	a5,s9,0x3c
    80007960:	00fd87b3          	add	a5,s11,a5
    80007964:	0007c503          	lbu	a0,0(a5)
    80007968:	fffd0d1b          	addiw	s10,s10,-1
    8000796c:	004c9c93          	slli	s9,s9,0x4
    80007970:	00000097          	auipc	ra,0x0
    80007974:	974080e7          	jalr	-1676(ra) # 800072e4 <consputc>
    80007978:	fe0d12e3          	bnez	s10,8000795c <__printf+0x494>
    8000797c:	f8dff06f          	j	80007908 <__printf+0x440>
    80007980:	f7843783          	ld	a5,-136(s0)
    80007984:	0007bc83          	ld	s9,0(a5)
    80007988:	00878793          	addi	a5,a5,8
    8000798c:	f6f43c23          	sd	a5,-136(s0)
    80007990:	000c9a63          	bnez	s9,800079a4 <__printf+0x4dc>
    80007994:	1080006f          	j	80007a9c <__printf+0x5d4>
    80007998:	001c8c93          	addi	s9,s9,1
    8000799c:	00000097          	auipc	ra,0x0
    800079a0:	948080e7          	jalr	-1720(ra) # 800072e4 <consputc>
    800079a4:	000cc503          	lbu	a0,0(s9)
    800079a8:	fe0518e3          	bnez	a0,80007998 <__printf+0x4d0>
    800079ac:	f5dff06f          	j	80007908 <__printf+0x440>
    800079b0:	02500513          	li	a0,37
    800079b4:	00000097          	auipc	ra,0x0
    800079b8:	930080e7          	jalr	-1744(ra) # 800072e4 <consputc>
    800079bc:	000c8513          	mv	a0,s9
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	924080e7          	jalr	-1756(ra) # 800072e4 <consputc>
    800079c8:	f41ff06f          	j	80007908 <__printf+0x440>
    800079cc:	02500513          	li	a0,37
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	914080e7          	jalr	-1772(ra) # 800072e4 <consputc>
    800079d8:	f31ff06f          	j	80007908 <__printf+0x440>
    800079dc:	00030513          	mv	a0,t1
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	7bc080e7          	jalr	1980(ra) # 8000819c <acquire>
    800079e8:	b4dff06f          	j	80007534 <__printf+0x6c>
    800079ec:	40c0053b          	negw	a0,a2
    800079f0:	00a00713          	li	a4,10
    800079f4:	02e576bb          	remuw	a3,a0,a4
    800079f8:	00002d97          	auipc	s11,0x2
    800079fc:	db8d8d93          	addi	s11,s11,-584 # 800097b0 <digits>
    80007a00:	ff700593          	li	a1,-9
    80007a04:	02069693          	slli	a3,a3,0x20
    80007a08:	0206d693          	srli	a3,a3,0x20
    80007a0c:	00dd86b3          	add	a3,s11,a3
    80007a10:	0006c683          	lbu	a3,0(a3)
    80007a14:	02e557bb          	divuw	a5,a0,a4
    80007a18:	f8d40023          	sb	a3,-128(s0)
    80007a1c:	10b65e63          	bge	a2,a1,80007b38 <__printf+0x670>
    80007a20:	06300593          	li	a1,99
    80007a24:	02e7f6bb          	remuw	a3,a5,a4
    80007a28:	02069693          	slli	a3,a3,0x20
    80007a2c:	0206d693          	srli	a3,a3,0x20
    80007a30:	00dd86b3          	add	a3,s11,a3
    80007a34:	0006c683          	lbu	a3,0(a3)
    80007a38:	02e7d73b          	divuw	a4,a5,a4
    80007a3c:	00200793          	li	a5,2
    80007a40:	f8d400a3          	sb	a3,-127(s0)
    80007a44:	bca5ece3          	bltu	a1,a0,8000761c <__printf+0x154>
    80007a48:	ce5ff06f          	j	8000772c <__printf+0x264>
    80007a4c:	40e007bb          	negw	a5,a4
    80007a50:	00002d97          	auipc	s11,0x2
    80007a54:	d60d8d93          	addi	s11,s11,-672 # 800097b0 <digits>
    80007a58:	00f7f693          	andi	a3,a5,15
    80007a5c:	00dd86b3          	add	a3,s11,a3
    80007a60:	0006c583          	lbu	a1,0(a3)
    80007a64:	ff100613          	li	a2,-15
    80007a68:	0047d69b          	srliw	a3,a5,0x4
    80007a6c:	f8b40023          	sb	a1,-128(s0)
    80007a70:	0047d59b          	srliw	a1,a5,0x4
    80007a74:	0ac75e63          	bge	a4,a2,80007b30 <__printf+0x668>
    80007a78:	00f6f693          	andi	a3,a3,15
    80007a7c:	00dd86b3          	add	a3,s11,a3
    80007a80:	0006c603          	lbu	a2,0(a3)
    80007a84:	00f00693          	li	a3,15
    80007a88:	0087d79b          	srliw	a5,a5,0x8
    80007a8c:	f8c400a3          	sb	a2,-127(s0)
    80007a90:	d8b6e4e3          	bltu	a3,a1,80007818 <__printf+0x350>
    80007a94:	00200793          	li	a5,2
    80007a98:	e2dff06f          	j	800078c4 <__printf+0x3fc>
    80007a9c:	00002c97          	auipc	s9,0x2
    80007aa0:	cf4c8c93          	addi	s9,s9,-780 # 80009790 <CONSOLE_STATUS+0x780>
    80007aa4:	02800513          	li	a0,40
    80007aa8:	ef1ff06f          	j	80007998 <__printf+0x4d0>
    80007aac:	00700793          	li	a5,7
    80007ab0:	00600c93          	li	s9,6
    80007ab4:	e0dff06f          	j	800078c0 <__printf+0x3f8>
    80007ab8:	00700793          	li	a5,7
    80007abc:	00600c93          	li	s9,6
    80007ac0:	c69ff06f          	j	80007728 <__printf+0x260>
    80007ac4:	00300793          	li	a5,3
    80007ac8:	00200c93          	li	s9,2
    80007acc:	c5dff06f          	j	80007728 <__printf+0x260>
    80007ad0:	00300793          	li	a5,3
    80007ad4:	00200c93          	li	s9,2
    80007ad8:	de9ff06f          	j	800078c0 <__printf+0x3f8>
    80007adc:	00400793          	li	a5,4
    80007ae0:	00300c93          	li	s9,3
    80007ae4:	dddff06f          	j	800078c0 <__printf+0x3f8>
    80007ae8:	00400793          	li	a5,4
    80007aec:	00300c93          	li	s9,3
    80007af0:	c39ff06f          	j	80007728 <__printf+0x260>
    80007af4:	00500793          	li	a5,5
    80007af8:	00400c93          	li	s9,4
    80007afc:	c2dff06f          	j	80007728 <__printf+0x260>
    80007b00:	00500793          	li	a5,5
    80007b04:	00400c93          	li	s9,4
    80007b08:	db9ff06f          	j	800078c0 <__printf+0x3f8>
    80007b0c:	00600793          	li	a5,6
    80007b10:	00500c93          	li	s9,5
    80007b14:	dadff06f          	j	800078c0 <__printf+0x3f8>
    80007b18:	00600793          	li	a5,6
    80007b1c:	00500c93          	li	s9,5
    80007b20:	c09ff06f          	j	80007728 <__printf+0x260>
    80007b24:	00800793          	li	a5,8
    80007b28:	00700c93          	li	s9,7
    80007b2c:	bfdff06f          	j	80007728 <__printf+0x260>
    80007b30:	00100793          	li	a5,1
    80007b34:	d91ff06f          	j	800078c4 <__printf+0x3fc>
    80007b38:	00100793          	li	a5,1
    80007b3c:	bf1ff06f          	j	8000772c <__printf+0x264>
    80007b40:	00900793          	li	a5,9
    80007b44:	00800c93          	li	s9,8
    80007b48:	be1ff06f          	j	80007728 <__printf+0x260>
    80007b4c:	00002517          	auipc	a0,0x2
    80007b50:	c4c50513          	addi	a0,a0,-948 # 80009798 <CONSOLE_STATUS+0x788>
    80007b54:	00000097          	auipc	ra,0x0
    80007b58:	918080e7          	jalr	-1768(ra) # 8000746c <panic>

0000000080007b5c <printfinit>:
    80007b5c:	fe010113          	addi	sp,sp,-32
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00913423          	sd	s1,8(sp)
    80007b68:	00113c23          	sd	ra,24(sp)
    80007b6c:	02010413          	addi	s0,sp,32
    80007b70:	0000d497          	auipc	s1,0xd
    80007b74:	47048493          	addi	s1,s1,1136 # 80014fe0 <pr>
    80007b78:	00048513          	mv	a0,s1
    80007b7c:	00002597          	auipc	a1,0x2
    80007b80:	c2c58593          	addi	a1,a1,-980 # 800097a8 <CONSOLE_STATUS+0x798>
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	5f4080e7          	jalr	1524(ra) # 80008178 <initlock>
    80007b8c:	01813083          	ld	ra,24(sp)
    80007b90:	01013403          	ld	s0,16(sp)
    80007b94:	0004ac23          	sw	zero,24(s1)
    80007b98:	00813483          	ld	s1,8(sp)
    80007b9c:	02010113          	addi	sp,sp,32
    80007ba0:	00008067          	ret

0000000080007ba4 <uartinit>:
    80007ba4:	ff010113          	addi	sp,sp,-16
    80007ba8:	00813423          	sd	s0,8(sp)
    80007bac:	01010413          	addi	s0,sp,16
    80007bb0:	100007b7          	lui	a5,0x10000
    80007bb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007bb8:	f8000713          	li	a4,-128
    80007bbc:	00e781a3          	sb	a4,3(a5)
    80007bc0:	00300713          	li	a4,3
    80007bc4:	00e78023          	sb	a4,0(a5)
    80007bc8:	000780a3          	sb	zero,1(a5)
    80007bcc:	00e781a3          	sb	a4,3(a5)
    80007bd0:	00700693          	li	a3,7
    80007bd4:	00d78123          	sb	a3,2(a5)
    80007bd8:	00e780a3          	sb	a4,1(a5)
    80007bdc:	00813403          	ld	s0,8(sp)
    80007be0:	01010113          	addi	sp,sp,16
    80007be4:	00008067          	ret

0000000080007be8 <uartputc>:
    80007be8:	00004797          	auipc	a5,0x4
    80007bec:	0e07a783          	lw	a5,224(a5) # 8000bcc8 <panicked>
    80007bf0:	00078463          	beqz	a5,80007bf8 <uartputc+0x10>
    80007bf4:	0000006f          	j	80007bf4 <uartputc+0xc>
    80007bf8:	fd010113          	addi	sp,sp,-48
    80007bfc:	02813023          	sd	s0,32(sp)
    80007c00:	00913c23          	sd	s1,24(sp)
    80007c04:	01213823          	sd	s2,16(sp)
    80007c08:	01313423          	sd	s3,8(sp)
    80007c0c:	02113423          	sd	ra,40(sp)
    80007c10:	03010413          	addi	s0,sp,48
    80007c14:	00004917          	auipc	s2,0x4
    80007c18:	0bc90913          	addi	s2,s2,188 # 8000bcd0 <uart_tx_r>
    80007c1c:	00093783          	ld	a5,0(s2)
    80007c20:	00004497          	auipc	s1,0x4
    80007c24:	0b848493          	addi	s1,s1,184 # 8000bcd8 <uart_tx_w>
    80007c28:	0004b703          	ld	a4,0(s1)
    80007c2c:	02078693          	addi	a3,a5,32
    80007c30:	00050993          	mv	s3,a0
    80007c34:	02e69c63          	bne	a3,a4,80007c6c <uartputc+0x84>
    80007c38:	00001097          	auipc	ra,0x1
    80007c3c:	834080e7          	jalr	-1996(ra) # 8000846c <push_on>
    80007c40:	00093783          	ld	a5,0(s2)
    80007c44:	0004b703          	ld	a4,0(s1)
    80007c48:	02078793          	addi	a5,a5,32
    80007c4c:	00e79463          	bne	a5,a4,80007c54 <uartputc+0x6c>
    80007c50:	0000006f          	j	80007c50 <uartputc+0x68>
    80007c54:	00001097          	auipc	ra,0x1
    80007c58:	88c080e7          	jalr	-1908(ra) # 800084e0 <pop_on>
    80007c5c:	00093783          	ld	a5,0(s2)
    80007c60:	0004b703          	ld	a4,0(s1)
    80007c64:	02078693          	addi	a3,a5,32
    80007c68:	fce688e3          	beq	a3,a4,80007c38 <uartputc+0x50>
    80007c6c:	01f77693          	andi	a3,a4,31
    80007c70:	0000d597          	auipc	a1,0xd
    80007c74:	39058593          	addi	a1,a1,912 # 80015000 <uart_tx_buf>
    80007c78:	00d586b3          	add	a3,a1,a3
    80007c7c:	00170713          	addi	a4,a4,1
    80007c80:	01368023          	sb	s3,0(a3)
    80007c84:	00e4b023          	sd	a4,0(s1)
    80007c88:	10000637          	lui	a2,0x10000
    80007c8c:	02f71063          	bne	a4,a5,80007cac <uartputc+0xc4>
    80007c90:	0340006f          	j	80007cc4 <uartputc+0xdc>
    80007c94:	00074703          	lbu	a4,0(a4)
    80007c98:	00f93023          	sd	a5,0(s2)
    80007c9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ca0:	00093783          	ld	a5,0(s2)
    80007ca4:	0004b703          	ld	a4,0(s1)
    80007ca8:	00f70e63          	beq	a4,a5,80007cc4 <uartputc+0xdc>
    80007cac:	00564683          	lbu	a3,5(a2)
    80007cb0:	01f7f713          	andi	a4,a5,31
    80007cb4:	00e58733          	add	a4,a1,a4
    80007cb8:	0206f693          	andi	a3,a3,32
    80007cbc:	00178793          	addi	a5,a5,1
    80007cc0:	fc069ae3          	bnez	a3,80007c94 <uartputc+0xac>
    80007cc4:	02813083          	ld	ra,40(sp)
    80007cc8:	02013403          	ld	s0,32(sp)
    80007ccc:	01813483          	ld	s1,24(sp)
    80007cd0:	01013903          	ld	s2,16(sp)
    80007cd4:	00813983          	ld	s3,8(sp)
    80007cd8:	03010113          	addi	sp,sp,48
    80007cdc:	00008067          	ret

0000000080007ce0 <uartputc_sync>:
    80007ce0:	ff010113          	addi	sp,sp,-16
    80007ce4:	00813423          	sd	s0,8(sp)
    80007ce8:	01010413          	addi	s0,sp,16
    80007cec:	00004717          	auipc	a4,0x4
    80007cf0:	fdc72703          	lw	a4,-36(a4) # 8000bcc8 <panicked>
    80007cf4:	02071663          	bnez	a4,80007d20 <uartputc_sync+0x40>
    80007cf8:	00050793          	mv	a5,a0
    80007cfc:	100006b7          	lui	a3,0x10000
    80007d00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007d04:	02077713          	andi	a4,a4,32
    80007d08:	fe070ce3          	beqz	a4,80007d00 <uartputc_sync+0x20>
    80007d0c:	0ff7f793          	andi	a5,a5,255
    80007d10:	00f68023          	sb	a5,0(a3)
    80007d14:	00813403          	ld	s0,8(sp)
    80007d18:	01010113          	addi	sp,sp,16
    80007d1c:	00008067          	ret
    80007d20:	0000006f          	j	80007d20 <uartputc_sync+0x40>

0000000080007d24 <uartstart>:
    80007d24:	ff010113          	addi	sp,sp,-16
    80007d28:	00813423          	sd	s0,8(sp)
    80007d2c:	01010413          	addi	s0,sp,16
    80007d30:	00004617          	auipc	a2,0x4
    80007d34:	fa060613          	addi	a2,a2,-96 # 8000bcd0 <uart_tx_r>
    80007d38:	00004517          	auipc	a0,0x4
    80007d3c:	fa050513          	addi	a0,a0,-96 # 8000bcd8 <uart_tx_w>
    80007d40:	00063783          	ld	a5,0(a2)
    80007d44:	00053703          	ld	a4,0(a0)
    80007d48:	04f70263          	beq	a4,a5,80007d8c <uartstart+0x68>
    80007d4c:	100005b7          	lui	a1,0x10000
    80007d50:	0000d817          	auipc	a6,0xd
    80007d54:	2b080813          	addi	a6,a6,688 # 80015000 <uart_tx_buf>
    80007d58:	01c0006f          	j	80007d74 <uartstart+0x50>
    80007d5c:	0006c703          	lbu	a4,0(a3)
    80007d60:	00f63023          	sd	a5,0(a2)
    80007d64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d68:	00063783          	ld	a5,0(a2)
    80007d6c:	00053703          	ld	a4,0(a0)
    80007d70:	00f70e63          	beq	a4,a5,80007d8c <uartstart+0x68>
    80007d74:	01f7f713          	andi	a4,a5,31
    80007d78:	00e806b3          	add	a3,a6,a4
    80007d7c:	0055c703          	lbu	a4,5(a1)
    80007d80:	00178793          	addi	a5,a5,1
    80007d84:	02077713          	andi	a4,a4,32
    80007d88:	fc071ae3          	bnez	a4,80007d5c <uartstart+0x38>
    80007d8c:	00813403          	ld	s0,8(sp)
    80007d90:	01010113          	addi	sp,sp,16
    80007d94:	00008067          	ret

0000000080007d98 <uartgetc>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813423          	sd	s0,8(sp)
    80007da0:	01010413          	addi	s0,sp,16
    80007da4:	10000737          	lui	a4,0x10000
    80007da8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007dac:	0017f793          	andi	a5,a5,1
    80007db0:	00078c63          	beqz	a5,80007dc8 <uartgetc+0x30>
    80007db4:	00074503          	lbu	a0,0(a4)
    80007db8:	0ff57513          	andi	a0,a0,255
    80007dbc:	00813403          	ld	s0,8(sp)
    80007dc0:	01010113          	addi	sp,sp,16
    80007dc4:	00008067          	ret
    80007dc8:	fff00513          	li	a0,-1
    80007dcc:	ff1ff06f          	j	80007dbc <uartgetc+0x24>

0000000080007dd0 <uartintr>:
    80007dd0:	100007b7          	lui	a5,0x10000
    80007dd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007dd8:	0017f793          	andi	a5,a5,1
    80007ddc:	0a078463          	beqz	a5,80007e84 <uartintr+0xb4>
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00913423          	sd	s1,8(sp)
    80007dec:	00113c23          	sd	ra,24(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	100004b7          	lui	s1,0x10000
    80007df8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007dfc:	0ff57513          	andi	a0,a0,255
    80007e00:	fffff097          	auipc	ra,0xfffff
    80007e04:	534080e7          	jalr	1332(ra) # 80007334 <consoleintr>
    80007e08:	0054c783          	lbu	a5,5(s1)
    80007e0c:	0017f793          	andi	a5,a5,1
    80007e10:	fe0794e3          	bnez	a5,80007df8 <uartintr+0x28>
    80007e14:	00004617          	auipc	a2,0x4
    80007e18:	ebc60613          	addi	a2,a2,-324 # 8000bcd0 <uart_tx_r>
    80007e1c:	00004517          	auipc	a0,0x4
    80007e20:	ebc50513          	addi	a0,a0,-324 # 8000bcd8 <uart_tx_w>
    80007e24:	00063783          	ld	a5,0(a2)
    80007e28:	00053703          	ld	a4,0(a0)
    80007e2c:	04f70263          	beq	a4,a5,80007e70 <uartintr+0xa0>
    80007e30:	100005b7          	lui	a1,0x10000
    80007e34:	0000d817          	auipc	a6,0xd
    80007e38:	1cc80813          	addi	a6,a6,460 # 80015000 <uart_tx_buf>
    80007e3c:	01c0006f          	j	80007e58 <uartintr+0x88>
    80007e40:	0006c703          	lbu	a4,0(a3)
    80007e44:	00f63023          	sd	a5,0(a2)
    80007e48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e4c:	00063783          	ld	a5,0(a2)
    80007e50:	00053703          	ld	a4,0(a0)
    80007e54:	00f70e63          	beq	a4,a5,80007e70 <uartintr+0xa0>
    80007e58:	01f7f713          	andi	a4,a5,31
    80007e5c:	00e806b3          	add	a3,a6,a4
    80007e60:	0055c703          	lbu	a4,5(a1)
    80007e64:	00178793          	addi	a5,a5,1
    80007e68:	02077713          	andi	a4,a4,32
    80007e6c:	fc071ae3          	bnez	a4,80007e40 <uartintr+0x70>
    80007e70:	01813083          	ld	ra,24(sp)
    80007e74:	01013403          	ld	s0,16(sp)
    80007e78:	00813483          	ld	s1,8(sp)
    80007e7c:	02010113          	addi	sp,sp,32
    80007e80:	00008067          	ret
    80007e84:	00004617          	auipc	a2,0x4
    80007e88:	e4c60613          	addi	a2,a2,-436 # 8000bcd0 <uart_tx_r>
    80007e8c:	00004517          	auipc	a0,0x4
    80007e90:	e4c50513          	addi	a0,a0,-436 # 8000bcd8 <uart_tx_w>
    80007e94:	00063783          	ld	a5,0(a2)
    80007e98:	00053703          	ld	a4,0(a0)
    80007e9c:	04f70263          	beq	a4,a5,80007ee0 <uartintr+0x110>
    80007ea0:	100005b7          	lui	a1,0x10000
    80007ea4:	0000d817          	auipc	a6,0xd
    80007ea8:	15c80813          	addi	a6,a6,348 # 80015000 <uart_tx_buf>
    80007eac:	01c0006f          	j	80007ec8 <uartintr+0xf8>
    80007eb0:	0006c703          	lbu	a4,0(a3)
    80007eb4:	00f63023          	sd	a5,0(a2)
    80007eb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ebc:	00063783          	ld	a5,0(a2)
    80007ec0:	00053703          	ld	a4,0(a0)
    80007ec4:	02f70063          	beq	a4,a5,80007ee4 <uartintr+0x114>
    80007ec8:	01f7f713          	andi	a4,a5,31
    80007ecc:	00e806b3          	add	a3,a6,a4
    80007ed0:	0055c703          	lbu	a4,5(a1)
    80007ed4:	00178793          	addi	a5,a5,1
    80007ed8:	02077713          	andi	a4,a4,32
    80007edc:	fc071ae3          	bnez	a4,80007eb0 <uartintr+0xe0>
    80007ee0:	00008067          	ret
    80007ee4:	00008067          	ret

0000000080007ee8 <kinit>:
    80007ee8:	fc010113          	addi	sp,sp,-64
    80007eec:	02913423          	sd	s1,40(sp)
    80007ef0:	fffff7b7          	lui	a5,0xfffff
    80007ef4:	0000e497          	auipc	s1,0xe
    80007ef8:	12b48493          	addi	s1,s1,299 # 8001601f <end+0xfff>
    80007efc:	02813823          	sd	s0,48(sp)
    80007f00:	01313c23          	sd	s3,24(sp)
    80007f04:	00f4f4b3          	and	s1,s1,a5
    80007f08:	02113c23          	sd	ra,56(sp)
    80007f0c:	03213023          	sd	s2,32(sp)
    80007f10:	01413823          	sd	s4,16(sp)
    80007f14:	01513423          	sd	s5,8(sp)
    80007f18:	04010413          	addi	s0,sp,64
    80007f1c:	000017b7          	lui	a5,0x1
    80007f20:	01100993          	li	s3,17
    80007f24:	00f487b3          	add	a5,s1,a5
    80007f28:	01b99993          	slli	s3,s3,0x1b
    80007f2c:	06f9e063          	bltu	s3,a5,80007f8c <kinit+0xa4>
    80007f30:	0000da97          	auipc	s5,0xd
    80007f34:	0f0a8a93          	addi	s5,s5,240 # 80015020 <end>
    80007f38:	0754ec63          	bltu	s1,s5,80007fb0 <kinit+0xc8>
    80007f3c:	0734fa63          	bgeu	s1,s3,80007fb0 <kinit+0xc8>
    80007f40:	00088a37          	lui	s4,0x88
    80007f44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f48:	00004917          	auipc	s2,0x4
    80007f4c:	d9890913          	addi	s2,s2,-616 # 8000bce0 <kmem>
    80007f50:	00ca1a13          	slli	s4,s4,0xc
    80007f54:	0140006f          	j	80007f68 <kinit+0x80>
    80007f58:	000017b7          	lui	a5,0x1
    80007f5c:	00f484b3          	add	s1,s1,a5
    80007f60:	0554e863          	bltu	s1,s5,80007fb0 <kinit+0xc8>
    80007f64:	0534f663          	bgeu	s1,s3,80007fb0 <kinit+0xc8>
    80007f68:	00001637          	lui	a2,0x1
    80007f6c:	00100593          	li	a1,1
    80007f70:	00048513          	mv	a0,s1
    80007f74:	00000097          	auipc	ra,0x0
    80007f78:	5e4080e7          	jalr	1508(ra) # 80008558 <__memset>
    80007f7c:	00093783          	ld	a5,0(s2)
    80007f80:	00f4b023          	sd	a5,0(s1)
    80007f84:	00993023          	sd	s1,0(s2)
    80007f88:	fd4498e3          	bne	s1,s4,80007f58 <kinit+0x70>
    80007f8c:	03813083          	ld	ra,56(sp)
    80007f90:	03013403          	ld	s0,48(sp)
    80007f94:	02813483          	ld	s1,40(sp)
    80007f98:	02013903          	ld	s2,32(sp)
    80007f9c:	01813983          	ld	s3,24(sp)
    80007fa0:	01013a03          	ld	s4,16(sp)
    80007fa4:	00813a83          	ld	s5,8(sp)
    80007fa8:	04010113          	addi	sp,sp,64
    80007fac:	00008067          	ret
    80007fb0:	00002517          	auipc	a0,0x2
    80007fb4:	81850513          	addi	a0,a0,-2024 # 800097c8 <digits+0x18>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	4b4080e7          	jalr	1204(ra) # 8000746c <panic>

0000000080007fc0 <freerange>:
    80007fc0:	fc010113          	addi	sp,sp,-64
    80007fc4:	000017b7          	lui	a5,0x1
    80007fc8:	02913423          	sd	s1,40(sp)
    80007fcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007fd0:	009504b3          	add	s1,a0,s1
    80007fd4:	fffff537          	lui	a0,0xfffff
    80007fd8:	02813823          	sd	s0,48(sp)
    80007fdc:	02113c23          	sd	ra,56(sp)
    80007fe0:	03213023          	sd	s2,32(sp)
    80007fe4:	01313c23          	sd	s3,24(sp)
    80007fe8:	01413823          	sd	s4,16(sp)
    80007fec:	01513423          	sd	s5,8(sp)
    80007ff0:	01613023          	sd	s6,0(sp)
    80007ff4:	04010413          	addi	s0,sp,64
    80007ff8:	00a4f4b3          	and	s1,s1,a0
    80007ffc:	00f487b3          	add	a5,s1,a5
    80008000:	06f5e463          	bltu	a1,a5,80008068 <freerange+0xa8>
    80008004:	0000da97          	auipc	s5,0xd
    80008008:	01ca8a93          	addi	s5,s5,28 # 80015020 <end>
    8000800c:	0954e263          	bltu	s1,s5,80008090 <freerange+0xd0>
    80008010:	01100993          	li	s3,17
    80008014:	01b99993          	slli	s3,s3,0x1b
    80008018:	0734fc63          	bgeu	s1,s3,80008090 <freerange+0xd0>
    8000801c:	00058a13          	mv	s4,a1
    80008020:	00004917          	auipc	s2,0x4
    80008024:	cc090913          	addi	s2,s2,-832 # 8000bce0 <kmem>
    80008028:	00002b37          	lui	s6,0x2
    8000802c:	0140006f          	j	80008040 <freerange+0x80>
    80008030:	000017b7          	lui	a5,0x1
    80008034:	00f484b3          	add	s1,s1,a5
    80008038:	0554ec63          	bltu	s1,s5,80008090 <freerange+0xd0>
    8000803c:	0534fa63          	bgeu	s1,s3,80008090 <freerange+0xd0>
    80008040:	00001637          	lui	a2,0x1
    80008044:	00100593          	li	a1,1
    80008048:	00048513          	mv	a0,s1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	50c080e7          	jalr	1292(ra) # 80008558 <__memset>
    80008054:	00093703          	ld	a4,0(s2)
    80008058:	016487b3          	add	a5,s1,s6
    8000805c:	00e4b023          	sd	a4,0(s1)
    80008060:	00993023          	sd	s1,0(s2)
    80008064:	fcfa76e3          	bgeu	s4,a5,80008030 <freerange+0x70>
    80008068:	03813083          	ld	ra,56(sp)
    8000806c:	03013403          	ld	s0,48(sp)
    80008070:	02813483          	ld	s1,40(sp)
    80008074:	02013903          	ld	s2,32(sp)
    80008078:	01813983          	ld	s3,24(sp)
    8000807c:	01013a03          	ld	s4,16(sp)
    80008080:	00813a83          	ld	s5,8(sp)
    80008084:	00013b03          	ld	s6,0(sp)
    80008088:	04010113          	addi	sp,sp,64
    8000808c:	00008067          	ret
    80008090:	00001517          	auipc	a0,0x1
    80008094:	73850513          	addi	a0,a0,1848 # 800097c8 <digits+0x18>
    80008098:	fffff097          	auipc	ra,0xfffff
    8000809c:	3d4080e7          	jalr	980(ra) # 8000746c <panic>

00000000800080a0 <kfree>:
    800080a0:	fe010113          	addi	sp,sp,-32
    800080a4:	00813823          	sd	s0,16(sp)
    800080a8:	00113c23          	sd	ra,24(sp)
    800080ac:	00913423          	sd	s1,8(sp)
    800080b0:	02010413          	addi	s0,sp,32
    800080b4:	03451793          	slli	a5,a0,0x34
    800080b8:	04079c63          	bnez	a5,80008110 <kfree+0x70>
    800080bc:	0000d797          	auipc	a5,0xd
    800080c0:	f6478793          	addi	a5,a5,-156 # 80015020 <end>
    800080c4:	00050493          	mv	s1,a0
    800080c8:	04f56463          	bltu	a0,a5,80008110 <kfree+0x70>
    800080cc:	01100793          	li	a5,17
    800080d0:	01b79793          	slli	a5,a5,0x1b
    800080d4:	02f57e63          	bgeu	a0,a5,80008110 <kfree+0x70>
    800080d8:	00001637          	lui	a2,0x1
    800080dc:	00100593          	li	a1,1
    800080e0:	00000097          	auipc	ra,0x0
    800080e4:	478080e7          	jalr	1144(ra) # 80008558 <__memset>
    800080e8:	00004797          	auipc	a5,0x4
    800080ec:	bf878793          	addi	a5,a5,-1032 # 8000bce0 <kmem>
    800080f0:	0007b703          	ld	a4,0(a5)
    800080f4:	01813083          	ld	ra,24(sp)
    800080f8:	01013403          	ld	s0,16(sp)
    800080fc:	00e4b023          	sd	a4,0(s1)
    80008100:	0097b023          	sd	s1,0(a5)
    80008104:	00813483          	ld	s1,8(sp)
    80008108:	02010113          	addi	sp,sp,32
    8000810c:	00008067          	ret
    80008110:	00001517          	auipc	a0,0x1
    80008114:	6b850513          	addi	a0,a0,1720 # 800097c8 <digits+0x18>
    80008118:	fffff097          	auipc	ra,0xfffff
    8000811c:	354080e7          	jalr	852(ra) # 8000746c <panic>

0000000080008120 <kalloc>:
    80008120:	fe010113          	addi	sp,sp,-32
    80008124:	00813823          	sd	s0,16(sp)
    80008128:	00913423          	sd	s1,8(sp)
    8000812c:	00113c23          	sd	ra,24(sp)
    80008130:	02010413          	addi	s0,sp,32
    80008134:	00004797          	auipc	a5,0x4
    80008138:	bac78793          	addi	a5,a5,-1108 # 8000bce0 <kmem>
    8000813c:	0007b483          	ld	s1,0(a5)
    80008140:	02048063          	beqz	s1,80008160 <kalloc+0x40>
    80008144:	0004b703          	ld	a4,0(s1)
    80008148:	00001637          	lui	a2,0x1
    8000814c:	00500593          	li	a1,5
    80008150:	00048513          	mv	a0,s1
    80008154:	00e7b023          	sd	a4,0(a5)
    80008158:	00000097          	auipc	ra,0x0
    8000815c:	400080e7          	jalr	1024(ra) # 80008558 <__memset>
    80008160:	01813083          	ld	ra,24(sp)
    80008164:	01013403          	ld	s0,16(sp)
    80008168:	00048513          	mv	a0,s1
    8000816c:	00813483          	ld	s1,8(sp)
    80008170:	02010113          	addi	sp,sp,32
    80008174:	00008067          	ret

0000000080008178 <initlock>:
    80008178:	ff010113          	addi	sp,sp,-16
    8000817c:	00813423          	sd	s0,8(sp)
    80008180:	01010413          	addi	s0,sp,16
    80008184:	00813403          	ld	s0,8(sp)
    80008188:	00b53423          	sd	a1,8(a0)
    8000818c:	00052023          	sw	zero,0(a0)
    80008190:	00053823          	sd	zero,16(a0)
    80008194:	01010113          	addi	sp,sp,16
    80008198:	00008067          	ret

000000008000819c <acquire>:
    8000819c:	fe010113          	addi	sp,sp,-32
    800081a0:	00813823          	sd	s0,16(sp)
    800081a4:	00913423          	sd	s1,8(sp)
    800081a8:	00113c23          	sd	ra,24(sp)
    800081ac:	01213023          	sd	s2,0(sp)
    800081b0:	02010413          	addi	s0,sp,32
    800081b4:	00050493          	mv	s1,a0
    800081b8:	10002973          	csrr	s2,sstatus
    800081bc:	100027f3          	csrr	a5,sstatus
    800081c0:	ffd7f793          	andi	a5,a5,-3
    800081c4:	10079073          	csrw	sstatus,a5
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	8e0080e7          	jalr	-1824(ra) # 80006aa8 <mycpu>
    800081d0:	07852783          	lw	a5,120(a0)
    800081d4:	06078e63          	beqz	a5,80008250 <acquire+0xb4>
    800081d8:	fffff097          	auipc	ra,0xfffff
    800081dc:	8d0080e7          	jalr	-1840(ra) # 80006aa8 <mycpu>
    800081e0:	07852783          	lw	a5,120(a0)
    800081e4:	0004a703          	lw	a4,0(s1)
    800081e8:	0017879b          	addiw	a5,a5,1
    800081ec:	06f52c23          	sw	a5,120(a0)
    800081f0:	04071063          	bnez	a4,80008230 <acquire+0x94>
    800081f4:	00100713          	li	a4,1
    800081f8:	00070793          	mv	a5,a4
    800081fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008200:	0007879b          	sext.w	a5,a5
    80008204:	fe079ae3          	bnez	a5,800081f8 <acquire+0x5c>
    80008208:	0ff0000f          	fence
    8000820c:	fffff097          	auipc	ra,0xfffff
    80008210:	89c080e7          	jalr	-1892(ra) # 80006aa8 <mycpu>
    80008214:	01813083          	ld	ra,24(sp)
    80008218:	01013403          	ld	s0,16(sp)
    8000821c:	00a4b823          	sd	a0,16(s1)
    80008220:	00013903          	ld	s2,0(sp)
    80008224:	00813483          	ld	s1,8(sp)
    80008228:	02010113          	addi	sp,sp,32
    8000822c:	00008067          	ret
    80008230:	0104b903          	ld	s2,16(s1)
    80008234:	fffff097          	auipc	ra,0xfffff
    80008238:	874080e7          	jalr	-1932(ra) # 80006aa8 <mycpu>
    8000823c:	faa91ce3          	bne	s2,a0,800081f4 <acquire+0x58>
    80008240:	00001517          	auipc	a0,0x1
    80008244:	59050513          	addi	a0,a0,1424 # 800097d0 <digits+0x20>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	224080e7          	jalr	548(ra) # 8000746c <panic>
    80008250:	00195913          	srli	s2,s2,0x1
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	854080e7          	jalr	-1964(ra) # 80006aa8 <mycpu>
    8000825c:	00197913          	andi	s2,s2,1
    80008260:	07252e23          	sw	s2,124(a0)
    80008264:	f75ff06f          	j	800081d8 <acquire+0x3c>

0000000080008268 <release>:
    80008268:	fe010113          	addi	sp,sp,-32
    8000826c:	00813823          	sd	s0,16(sp)
    80008270:	00113c23          	sd	ra,24(sp)
    80008274:	00913423          	sd	s1,8(sp)
    80008278:	01213023          	sd	s2,0(sp)
    8000827c:	02010413          	addi	s0,sp,32
    80008280:	00052783          	lw	a5,0(a0)
    80008284:	00079a63          	bnez	a5,80008298 <release+0x30>
    80008288:	00001517          	auipc	a0,0x1
    8000828c:	55050513          	addi	a0,a0,1360 # 800097d8 <digits+0x28>
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	1dc080e7          	jalr	476(ra) # 8000746c <panic>
    80008298:	01053903          	ld	s2,16(a0)
    8000829c:	00050493          	mv	s1,a0
    800082a0:	fffff097          	auipc	ra,0xfffff
    800082a4:	808080e7          	jalr	-2040(ra) # 80006aa8 <mycpu>
    800082a8:	fea910e3          	bne	s2,a0,80008288 <release+0x20>
    800082ac:	0004b823          	sd	zero,16(s1)
    800082b0:	0ff0000f          	fence
    800082b4:	0f50000f          	fence	iorw,ow
    800082b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082bc:	ffffe097          	auipc	ra,0xffffe
    800082c0:	7ec080e7          	jalr	2028(ra) # 80006aa8 <mycpu>
    800082c4:	100027f3          	csrr	a5,sstatus
    800082c8:	0027f793          	andi	a5,a5,2
    800082cc:	04079a63          	bnez	a5,80008320 <release+0xb8>
    800082d0:	07852783          	lw	a5,120(a0)
    800082d4:	02f05e63          	blez	a5,80008310 <release+0xa8>
    800082d8:	fff7871b          	addiw	a4,a5,-1
    800082dc:	06e52c23          	sw	a4,120(a0)
    800082e0:	00071c63          	bnez	a4,800082f8 <release+0x90>
    800082e4:	07c52783          	lw	a5,124(a0)
    800082e8:	00078863          	beqz	a5,800082f8 <release+0x90>
    800082ec:	100027f3          	csrr	a5,sstatus
    800082f0:	0027e793          	ori	a5,a5,2
    800082f4:	10079073          	csrw	sstatus,a5
    800082f8:	01813083          	ld	ra,24(sp)
    800082fc:	01013403          	ld	s0,16(sp)
    80008300:	00813483          	ld	s1,8(sp)
    80008304:	00013903          	ld	s2,0(sp)
    80008308:	02010113          	addi	sp,sp,32
    8000830c:	00008067          	ret
    80008310:	00001517          	auipc	a0,0x1
    80008314:	4e850513          	addi	a0,a0,1256 # 800097f8 <digits+0x48>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	154080e7          	jalr	340(ra) # 8000746c <panic>
    80008320:	00001517          	auipc	a0,0x1
    80008324:	4c050513          	addi	a0,a0,1216 # 800097e0 <digits+0x30>
    80008328:	fffff097          	auipc	ra,0xfffff
    8000832c:	144080e7          	jalr	324(ra) # 8000746c <panic>

0000000080008330 <holding>:
    80008330:	00052783          	lw	a5,0(a0)
    80008334:	00079663          	bnez	a5,80008340 <holding+0x10>
    80008338:	00000513          	li	a0,0
    8000833c:	00008067          	ret
    80008340:	fe010113          	addi	sp,sp,-32
    80008344:	00813823          	sd	s0,16(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	00113c23          	sd	ra,24(sp)
    80008350:	02010413          	addi	s0,sp,32
    80008354:	01053483          	ld	s1,16(a0)
    80008358:	ffffe097          	auipc	ra,0xffffe
    8000835c:	750080e7          	jalr	1872(ra) # 80006aa8 <mycpu>
    80008360:	01813083          	ld	ra,24(sp)
    80008364:	01013403          	ld	s0,16(sp)
    80008368:	40a48533          	sub	a0,s1,a0
    8000836c:	00153513          	seqz	a0,a0
    80008370:	00813483          	ld	s1,8(sp)
    80008374:	02010113          	addi	sp,sp,32
    80008378:	00008067          	ret

000000008000837c <push_off>:
    8000837c:	fe010113          	addi	sp,sp,-32
    80008380:	00813823          	sd	s0,16(sp)
    80008384:	00113c23          	sd	ra,24(sp)
    80008388:	00913423          	sd	s1,8(sp)
    8000838c:	02010413          	addi	s0,sp,32
    80008390:	100024f3          	csrr	s1,sstatus
    80008394:	100027f3          	csrr	a5,sstatus
    80008398:	ffd7f793          	andi	a5,a5,-3
    8000839c:	10079073          	csrw	sstatus,a5
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	708080e7          	jalr	1800(ra) # 80006aa8 <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	02078663          	beqz	a5,800083d8 <push_off+0x5c>
    800083b0:	ffffe097          	auipc	ra,0xffffe
    800083b4:	6f8080e7          	jalr	1784(ra) # 80006aa8 <mycpu>
    800083b8:	07852783          	lw	a5,120(a0)
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	0017879b          	addiw	a5,a5,1
    800083c8:	06f52c23          	sw	a5,120(a0)
    800083cc:	00813483          	ld	s1,8(sp)
    800083d0:	02010113          	addi	sp,sp,32
    800083d4:	00008067          	ret
    800083d8:	0014d493          	srli	s1,s1,0x1
    800083dc:	ffffe097          	auipc	ra,0xffffe
    800083e0:	6cc080e7          	jalr	1740(ra) # 80006aa8 <mycpu>
    800083e4:	0014f493          	andi	s1,s1,1
    800083e8:	06952e23          	sw	s1,124(a0)
    800083ec:	fc5ff06f          	j	800083b0 <push_off+0x34>

00000000800083f0 <pop_off>:
    800083f0:	ff010113          	addi	sp,sp,-16
    800083f4:	00813023          	sd	s0,0(sp)
    800083f8:	00113423          	sd	ra,8(sp)
    800083fc:	01010413          	addi	s0,sp,16
    80008400:	ffffe097          	auipc	ra,0xffffe
    80008404:	6a8080e7          	jalr	1704(ra) # 80006aa8 <mycpu>
    80008408:	100027f3          	csrr	a5,sstatus
    8000840c:	0027f793          	andi	a5,a5,2
    80008410:	04079663          	bnez	a5,8000845c <pop_off+0x6c>
    80008414:	07852783          	lw	a5,120(a0)
    80008418:	02f05a63          	blez	a5,8000844c <pop_off+0x5c>
    8000841c:	fff7871b          	addiw	a4,a5,-1
    80008420:	06e52c23          	sw	a4,120(a0)
    80008424:	00071c63          	bnez	a4,8000843c <pop_off+0x4c>
    80008428:	07c52783          	lw	a5,124(a0)
    8000842c:	00078863          	beqz	a5,8000843c <pop_off+0x4c>
    80008430:	100027f3          	csrr	a5,sstatus
    80008434:	0027e793          	ori	a5,a5,2
    80008438:	10079073          	csrw	sstatus,a5
    8000843c:	00813083          	ld	ra,8(sp)
    80008440:	00013403          	ld	s0,0(sp)
    80008444:	01010113          	addi	sp,sp,16
    80008448:	00008067          	ret
    8000844c:	00001517          	auipc	a0,0x1
    80008450:	3ac50513          	addi	a0,a0,940 # 800097f8 <digits+0x48>
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	018080e7          	jalr	24(ra) # 8000746c <panic>
    8000845c:	00001517          	auipc	a0,0x1
    80008460:	38450513          	addi	a0,a0,900 # 800097e0 <digits+0x30>
    80008464:	fffff097          	auipc	ra,0xfffff
    80008468:	008080e7          	jalr	8(ra) # 8000746c <panic>

000000008000846c <push_on>:
    8000846c:	fe010113          	addi	sp,sp,-32
    80008470:	00813823          	sd	s0,16(sp)
    80008474:	00113c23          	sd	ra,24(sp)
    80008478:	00913423          	sd	s1,8(sp)
    8000847c:	02010413          	addi	s0,sp,32
    80008480:	100024f3          	csrr	s1,sstatus
    80008484:	100027f3          	csrr	a5,sstatus
    80008488:	0027e793          	ori	a5,a5,2
    8000848c:	10079073          	csrw	sstatus,a5
    80008490:	ffffe097          	auipc	ra,0xffffe
    80008494:	618080e7          	jalr	1560(ra) # 80006aa8 <mycpu>
    80008498:	07852783          	lw	a5,120(a0)
    8000849c:	02078663          	beqz	a5,800084c8 <push_on+0x5c>
    800084a0:	ffffe097          	auipc	ra,0xffffe
    800084a4:	608080e7          	jalr	1544(ra) # 80006aa8 <mycpu>
    800084a8:	07852783          	lw	a5,120(a0)
    800084ac:	01813083          	ld	ra,24(sp)
    800084b0:	01013403          	ld	s0,16(sp)
    800084b4:	0017879b          	addiw	a5,a5,1
    800084b8:	06f52c23          	sw	a5,120(a0)
    800084bc:	00813483          	ld	s1,8(sp)
    800084c0:	02010113          	addi	sp,sp,32
    800084c4:	00008067          	ret
    800084c8:	0014d493          	srli	s1,s1,0x1
    800084cc:	ffffe097          	auipc	ra,0xffffe
    800084d0:	5dc080e7          	jalr	1500(ra) # 80006aa8 <mycpu>
    800084d4:	0014f493          	andi	s1,s1,1
    800084d8:	06952e23          	sw	s1,124(a0)
    800084dc:	fc5ff06f          	j	800084a0 <push_on+0x34>

00000000800084e0 <pop_on>:
    800084e0:	ff010113          	addi	sp,sp,-16
    800084e4:	00813023          	sd	s0,0(sp)
    800084e8:	00113423          	sd	ra,8(sp)
    800084ec:	01010413          	addi	s0,sp,16
    800084f0:	ffffe097          	auipc	ra,0xffffe
    800084f4:	5b8080e7          	jalr	1464(ra) # 80006aa8 <mycpu>
    800084f8:	100027f3          	csrr	a5,sstatus
    800084fc:	0027f793          	andi	a5,a5,2
    80008500:	04078463          	beqz	a5,80008548 <pop_on+0x68>
    80008504:	07852783          	lw	a5,120(a0)
    80008508:	02f05863          	blez	a5,80008538 <pop_on+0x58>
    8000850c:	fff7879b          	addiw	a5,a5,-1
    80008510:	06f52c23          	sw	a5,120(a0)
    80008514:	07853783          	ld	a5,120(a0)
    80008518:	00079863          	bnez	a5,80008528 <pop_on+0x48>
    8000851c:	100027f3          	csrr	a5,sstatus
    80008520:	ffd7f793          	andi	a5,a5,-3
    80008524:	10079073          	csrw	sstatus,a5
    80008528:	00813083          	ld	ra,8(sp)
    8000852c:	00013403          	ld	s0,0(sp)
    80008530:	01010113          	addi	sp,sp,16
    80008534:	00008067          	ret
    80008538:	00001517          	auipc	a0,0x1
    8000853c:	2e850513          	addi	a0,a0,744 # 80009820 <digits+0x70>
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	f2c080e7          	jalr	-212(ra) # 8000746c <panic>
    80008548:	00001517          	auipc	a0,0x1
    8000854c:	2b850513          	addi	a0,a0,696 # 80009800 <digits+0x50>
    80008550:	fffff097          	auipc	ra,0xfffff
    80008554:	f1c080e7          	jalr	-228(ra) # 8000746c <panic>

0000000080008558 <__memset>:
    80008558:	ff010113          	addi	sp,sp,-16
    8000855c:	00813423          	sd	s0,8(sp)
    80008560:	01010413          	addi	s0,sp,16
    80008564:	1a060e63          	beqz	a2,80008720 <__memset+0x1c8>
    80008568:	40a007b3          	neg	a5,a0
    8000856c:	0077f793          	andi	a5,a5,7
    80008570:	00778693          	addi	a3,a5,7
    80008574:	00b00813          	li	a6,11
    80008578:	0ff5f593          	andi	a1,a1,255
    8000857c:	fff6071b          	addiw	a4,a2,-1
    80008580:	1b06e663          	bltu	a3,a6,8000872c <__memset+0x1d4>
    80008584:	1cd76463          	bltu	a4,a3,8000874c <__memset+0x1f4>
    80008588:	1a078e63          	beqz	a5,80008744 <__memset+0x1ec>
    8000858c:	00b50023          	sb	a1,0(a0)
    80008590:	00100713          	li	a4,1
    80008594:	1ae78463          	beq	a5,a4,8000873c <__memset+0x1e4>
    80008598:	00b500a3          	sb	a1,1(a0)
    8000859c:	00200713          	li	a4,2
    800085a0:	1ae78a63          	beq	a5,a4,80008754 <__memset+0x1fc>
    800085a4:	00b50123          	sb	a1,2(a0)
    800085a8:	00300713          	li	a4,3
    800085ac:	18e78463          	beq	a5,a4,80008734 <__memset+0x1dc>
    800085b0:	00b501a3          	sb	a1,3(a0)
    800085b4:	00400713          	li	a4,4
    800085b8:	1ae78263          	beq	a5,a4,8000875c <__memset+0x204>
    800085bc:	00b50223          	sb	a1,4(a0)
    800085c0:	00500713          	li	a4,5
    800085c4:	1ae78063          	beq	a5,a4,80008764 <__memset+0x20c>
    800085c8:	00b502a3          	sb	a1,5(a0)
    800085cc:	00700713          	li	a4,7
    800085d0:	18e79e63          	bne	a5,a4,8000876c <__memset+0x214>
    800085d4:	00b50323          	sb	a1,6(a0)
    800085d8:	00700e93          	li	t4,7
    800085dc:	00859713          	slli	a4,a1,0x8
    800085e0:	00e5e733          	or	a4,a1,a4
    800085e4:	01059e13          	slli	t3,a1,0x10
    800085e8:	01c76e33          	or	t3,a4,t3
    800085ec:	01859313          	slli	t1,a1,0x18
    800085f0:	006e6333          	or	t1,t3,t1
    800085f4:	02059893          	slli	a7,a1,0x20
    800085f8:	40f60e3b          	subw	t3,a2,a5
    800085fc:	011368b3          	or	a7,t1,a7
    80008600:	02859813          	slli	a6,a1,0x28
    80008604:	0108e833          	or	a6,a7,a6
    80008608:	03059693          	slli	a3,a1,0x30
    8000860c:	003e589b          	srliw	a7,t3,0x3
    80008610:	00d866b3          	or	a3,a6,a3
    80008614:	03859713          	slli	a4,a1,0x38
    80008618:	00389813          	slli	a6,a7,0x3
    8000861c:	00f507b3          	add	a5,a0,a5
    80008620:	00e6e733          	or	a4,a3,a4
    80008624:	000e089b          	sext.w	a7,t3
    80008628:	00f806b3          	add	a3,a6,a5
    8000862c:	00e7b023          	sd	a4,0(a5)
    80008630:	00878793          	addi	a5,a5,8
    80008634:	fed79ce3          	bne	a5,a3,8000862c <__memset+0xd4>
    80008638:	ff8e7793          	andi	a5,t3,-8
    8000863c:	0007871b          	sext.w	a4,a5
    80008640:	01d787bb          	addw	a5,a5,t4
    80008644:	0ce88e63          	beq	a7,a4,80008720 <__memset+0x1c8>
    80008648:	00f50733          	add	a4,a0,a5
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0017871b          	addiw	a4,a5,1
    80008654:	0cc77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0027871b          	addiw	a4,a5,2
    80008664:	0ac77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0037871b          	addiw	a4,a5,3
    80008674:	0ac77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0047871b          	addiw	a4,a5,4
    80008684:	08c77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0057871b          	addiw	a4,a5,5
    80008694:	08c77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0067871b          	addiw	a4,a5,6
    800086a4:	06c77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0077871b          	addiw	a4,a5,7
    800086b4:	06c77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0087871b          	addiw	a4,a5,8
    800086c4:	04c77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	0097871b          	addiw	a4,a5,9
    800086d4:	04c77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	00a7871b          	addiw	a4,a5,10
    800086e4:	02c77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	00b7871b          	addiw	a4,a5,11
    800086f4:	02c77663          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	00c7871b          	addiw	a4,a5,12
    80008704:	00c77e63          	bgeu	a4,a2,80008720 <__memset+0x1c8>
    80008708:	00e50733          	add	a4,a0,a4
    8000870c:	00b70023          	sb	a1,0(a4)
    80008710:	00d7879b          	addiw	a5,a5,13
    80008714:	00c7f663          	bgeu	a5,a2,80008720 <__memset+0x1c8>
    80008718:	00f507b3          	add	a5,a0,a5
    8000871c:	00b78023          	sb	a1,0(a5)
    80008720:	00813403          	ld	s0,8(sp)
    80008724:	01010113          	addi	sp,sp,16
    80008728:	00008067          	ret
    8000872c:	00b00693          	li	a3,11
    80008730:	e55ff06f          	j	80008584 <__memset+0x2c>
    80008734:	00300e93          	li	t4,3
    80008738:	ea5ff06f          	j	800085dc <__memset+0x84>
    8000873c:	00100e93          	li	t4,1
    80008740:	e9dff06f          	j	800085dc <__memset+0x84>
    80008744:	00000e93          	li	t4,0
    80008748:	e95ff06f          	j	800085dc <__memset+0x84>
    8000874c:	00000793          	li	a5,0
    80008750:	ef9ff06f          	j	80008648 <__memset+0xf0>
    80008754:	00200e93          	li	t4,2
    80008758:	e85ff06f          	j	800085dc <__memset+0x84>
    8000875c:	00400e93          	li	t4,4
    80008760:	e7dff06f          	j	800085dc <__memset+0x84>
    80008764:	00500e93          	li	t4,5
    80008768:	e75ff06f          	j	800085dc <__memset+0x84>
    8000876c:	00600e93          	li	t4,6
    80008770:	e6dff06f          	j	800085dc <__memset+0x84>

0000000080008774 <__memmove>:
    80008774:	ff010113          	addi	sp,sp,-16
    80008778:	00813423          	sd	s0,8(sp)
    8000877c:	01010413          	addi	s0,sp,16
    80008780:	0e060863          	beqz	a2,80008870 <__memmove+0xfc>
    80008784:	fff6069b          	addiw	a3,a2,-1
    80008788:	0006881b          	sext.w	a6,a3
    8000878c:	0ea5e863          	bltu	a1,a0,8000887c <__memmove+0x108>
    80008790:	00758713          	addi	a4,a1,7
    80008794:	00a5e7b3          	or	a5,a1,a0
    80008798:	40a70733          	sub	a4,a4,a0
    8000879c:	0077f793          	andi	a5,a5,7
    800087a0:	00f73713          	sltiu	a4,a4,15
    800087a4:	00174713          	xori	a4,a4,1
    800087a8:	0017b793          	seqz	a5,a5
    800087ac:	00e7f7b3          	and	a5,a5,a4
    800087b0:	10078863          	beqz	a5,800088c0 <__memmove+0x14c>
    800087b4:	00900793          	li	a5,9
    800087b8:	1107f463          	bgeu	a5,a6,800088c0 <__memmove+0x14c>
    800087bc:	0036581b          	srliw	a6,a2,0x3
    800087c0:	fff8081b          	addiw	a6,a6,-1
    800087c4:	02081813          	slli	a6,a6,0x20
    800087c8:	01d85893          	srli	a7,a6,0x1d
    800087cc:	00858813          	addi	a6,a1,8
    800087d0:	00058793          	mv	a5,a1
    800087d4:	00050713          	mv	a4,a0
    800087d8:	01088833          	add	a6,a7,a6
    800087dc:	0007b883          	ld	a7,0(a5)
    800087e0:	00878793          	addi	a5,a5,8
    800087e4:	00870713          	addi	a4,a4,8
    800087e8:	ff173c23          	sd	a7,-8(a4)
    800087ec:	ff0798e3          	bne	a5,a6,800087dc <__memmove+0x68>
    800087f0:	ff867713          	andi	a4,a2,-8
    800087f4:	02071793          	slli	a5,a4,0x20
    800087f8:	0207d793          	srli	a5,a5,0x20
    800087fc:	00f585b3          	add	a1,a1,a5
    80008800:	40e686bb          	subw	a3,a3,a4
    80008804:	00f507b3          	add	a5,a0,a5
    80008808:	06e60463          	beq	a2,a4,80008870 <__memmove+0xfc>
    8000880c:	0005c703          	lbu	a4,0(a1)
    80008810:	00e78023          	sb	a4,0(a5)
    80008814:	04068e63          	beqz	a3,80008870 <__memmove+0xfc>
    80008818:	0015c603          	lbu	a2,1(a1)
    8000881c:	00100713          	li	a4,1
    80008820:	00c780a3          	sb	a2,1(a5)
    80008824:	04e68663          	beq	a3,a4,80008870 <__memmove+0xfc>
    80008828:	0025c603          	lbu	a2,2(a1)
    8000882c:	00200713          	li	a4,2
    80008830:	00c78123          	sb	a2,2(a5)
    80008834:	02e68e63          	beq	a3,a4,80008870 <__memmove+0xfc>
    80008838:	0035c603          	lbu	a2,3(a1)
    8000883c:	00300713          	li	a4,3
    80008840:	00c781a3          	sb	a2,3(a5)
    80008844:	02e68663          	beq	a3,a4,80008870 <__memmove+0xfc>
    80008848:	0045c603          	lbu	a2,4(a1)
    8000884c:	00400713          	li	a4,4
    80008850:	00c78223          	sb	a2,4(a5)
    80008854:	00e68e63          	beq	a3,a4,80008870 <__memmove+0xfc>
    80008858:	0055c603          	lbu	a2,5(a1)
    8000885c:	00500713          	li	a4,5
    80008860:	00c782a3          	sb	a2,5(a5)
    80008864:	00e68663          	beq	a3,a4,80008870 <__memmove+0xfc>
    80008868:	0065c703          	lbu	a4,6(a1)
    8000886c:	00e78323          	sb	a4,6(a5)
    80008870:	00813403          	ld	s0,8(sp)
    80008874:	01010113          	addi	sp,sp,16
    80008878:	00008067          	ret
    8000887c:	02061713          	slli	a4,a2,0x20
    80008880:	02075713          	srli	a4,a4,0x20
    80008884:	00e587b3          	add	a5,a1,a4
    80008888:	f0f574e3          	bgeu	a0,a5,80008790 <__memmove+0x1c>
    8000888c:	02069613          	slli	a2,a3,0x20
    80008890:	02065613          	srli	a2,a2,0x20
    80008894:	fff64613          	not	a2,a2
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00c78633          	add	a2,a5,a2
    800088a0:	fff7c683          	lbu	a3,-1(a5)
    800088a4:	fff78793          	addi	a5,a5,-1
    800088a8:	fff70713          	addi	a4,a4,-1
    800088ac:	00d70023          	sb	a3,0(a4)
    800088b0:	fec798e3          	bne	a5,a2,800088a0 <__memmove+0x12c>
    800088b4:	00813403          	ld	s0,8(sp)
    800088b8:	01010113          	addi	sp,sp,16
    800088bc:	00008067          	ret
    800088c0:	02069713          	slli	a4,a3,0x20
    800088c4:	02075713          	srli	a4,a4,0x20
    800088c8:	00170713          	addi	a4,a4,1
    800088cc:	00e50733          	add	a4,a0,a4
    800088d0:	00050793          	mv	a5,a0
    800088d4:	0005c683          	lbu	a3,0(a1)
    800088d8:	00178793          	addi	a5,a5,1
    800088dc:	00158593          	addi	a1,a1,1
    800088e0:	fed78fa3          	sb	a3,-1(a5)
    800088e4:	fee798e3          	bne	a5,a4,800088d4 <__memmove+0x160>
    800088e8:	f89ff06f          	j	80008870 <__memmove+0xfc>
	...
