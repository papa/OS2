
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	94013103          	ld	sp,-1728(sp) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2e8060ef          	jal	ra,80006304 <start>

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
    80001088:	44c030ef          	jal	ra,800044d4 <_ZN5Riscv20handleSupervisorTrapEv>

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

000000008000128c <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	01213023          	sd	s2,0(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a8:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012ac:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012b0:	00000793          	li	a5,0
    800012b4:	0140006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x3c>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b8:	00379713          	slli	a4,a5,0x3
    800012bc:	00e48733          	add	a4,s1,a4
    800012c0:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00178793          	addi	a5,a5,1
    800012c8:	00c00713          	li	a4,12
    800012cc:	fef776e3          	bgeu	a4,a5,800012b8 <_Z19slab_allocator_initP14buddyAllocator+0x2c>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15048593          	addi	a1,s1,336
    800012d4:	00008517          	auipc	a0,0x8
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80009020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012e4:	1a04bc23          	sd	zero,440(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012e8:	1c04b023          	sd	zero,448(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012ec:	1804b823          	sd	zero,400(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f0:	1804bc23          	sd	zero,408(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012f4:	1a04b023          	sd	zero,416(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    800012f8:	00200793          	li	a5,2
    800012fc:	1af4b423          	sd	a5,424(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001300:	08000793          	li	a5,128
    80001304:	1af4b823          	sd	a5,432(s1)
    slabAllocatorLocal->cacheOfCaches.errors = NO_ERROR;
    80001308:	1c04a423          	sw	zero,456(s1)
    return slabAllocatorLocal;
}
    8000130c:	00090513          	mv	a0,s2
    80001310:	01813083          	ld	ra,24(sp)
    80001314:	01013403          	ld	s0,16(sp)
    80001318:	00813483          	ld	s1,8(sp)
    8000131c:	00013903          	ld	s2,0(sp)
    80001320:	02010113          	addi	sp,sp,32
    80001324:	00008067          	ret

0000000080001328 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    80001334:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001338:	00000793          	li	a5,0
    8000133c:	0185b703          	ld	a4,24(a1)
    80001340:	04e7f463          	bgeu	a5,a4,80001388 <_Z14allocateObjectP6slab_s+0x60>
    {
        size_t mask = 1 << (i%8);
    80001344:	0077f713          	andi	a4,a5,7
    80001348:	00100613          	li	a2,1
    8000134c:	00e616bb          	sllw	a3,a2,a4
        if(!((uint8)slab->allocated[i/8] & mask))
    80001350:	0037d713          	srli	a4,a5,0x3
    80001354:	00e58733          	add	a4,a1,a4
    80001358:	02874703          	lbu	a4,40(a4)
    8000135c:	00d77733          	and	a4,a4,a3
    80001360:	00070663          	beqz	a4,8000136c <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001364:	00178793          	addi	a5,a5,1
    80001368:	fd5ff06f          	j	8000133c <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    8000136c:	0105b703          	ld	a4,16(a1)
    80001370:	06073503          	ld	a0,96(a4)
    80001374:	02f50533          	mul	a0,a0,a5
    80001378:	00a58533          	add	a0,a1,a0
    8000137c:	04850513          	addi	a0,a0,72
            index = i;
    80001380:	0007879b          	sext.w	a5,a5
            break;
    80001384:	00c0006f          	j	80001390 <_Z14allocateObjectP6slab_s+0x68>
    void* addr = nullptr;
    80001388:	00000513          	li	a0,0
    int index = -1;
    8000138c:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    80001390:	04050063          	beqz	a0,800013d0 <_Z14allocateObjectP6slab_s+0xa8>

    //KConsole::trapPrintStringInt("Allocated index ",index);

    //TODO
    //implement functions to set bit and check it
    slab->allocated[index/8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    80001394:	41f7d69b          	sraiw	a3,a5,0x1f
    80001398:	01d6d69b          	srliw	a3,a3,0x1d
    8000139c:	00f687bb          	addw	a5,a3,a5
    800013a0:	4037d71b          	sraiw	a4,a5,0x3
    800013a4:	00e58733          	add	a4,a1,a4
    800013a8:	02870603          	lb	a2,40(a4)
    800013ac:	0077f793          	andi	a5,a5,7
    800013b0:	40d787bb          	subw	a5,a5,a3
    800013b4:	00100693          	li	a3,1
    800013b8:	00f697bb          	sllw	a5,a3,a5
    800013bc:	00f667b3          	or	a5,a2,a5
    800013c0:	02f70423          	sb	a5,40(a4)
    slab->numOfAllocatedObjects++;
    800013c4:	0205b783          	ld	a5,32(a1)
    800013c8:	00178793          	addi	a5,a5,1
    800013cc:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013e8:	02053783          	ld	a5,32(a0)
    800013ec:	01853503          	ld	a0,24(a0)
    800013f0:	40f50533          	sub	a0,a0,a5
}
    800013f4:	00153513          	seqz	a0,a0
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001410:	02053503          	ld	a0,32(a0)
}
    80001414:	00153513          	seqz	a0,a0
    80001418:	00813403          	ld	s0,8(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00813423          	sd	s0,8(sp)
    8000142c:	01010413          	addi	s0,sp,16
    slab->prev = nullptr;
    80001430:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    80001434:	0005b783          	ld	a5,0(a1)
    80001438:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    8000143c:	00078463          	beqz	a5,80001444 <_Z18insertIntoSlabListP6slab_sPS0_+0x20>
        (*slab_head)->prev = slab;
    80001440:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    80001444:	00a5b023          	sd	a0,0(a1)
}
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001460:	00053783          	ld	a5,0(a0)
    80001464:	02078663          	beqz	a5,80001490 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001468:	00853703          	ld	a4,8(a0)
    8000146c:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001470:	00070663          	beqz	a4,8000147c <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    80001474:	00053783          	ld	a5,0(a0)
    80001478:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    8000147c:	00053023          	sd	zero,0(a0)
    80001480:	00053423          	sd	zero,8(a0)
    }
}
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001490:	00853783          	ld	a5,8(a0)
    80001494:	00078463          	beqz	a5,8000149c <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001498:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    8000149c:	00853783          	ld	a5,8(a0)
    800014a0:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    800014a4:	00053023          	sd	zero,0(a0)
    800014a8:	00053423          	sd	zero,8(a0)
    800014ac:	fd9ff06f          	j	80001484 <_Z18removeFromSlabListP6slab_sPS0_+0x30>

00000000800014b0 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    800014b0:	fe010113          	addi	sp,sp,-32
    800014b4:	00113c23          	sd	ra,24(sp)
    800014b8:	00813823          	sd	s0,16(sp)
    800014bc:	00913423          	sd	s1,8(sp)
    800014c0:	01213023          	sd	s2,0(sp)
    800014c4:	02010413          	addi	s0,sp,32
    800014c8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    800014cc:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    800014d0:	05050593          	addi	a1,a0,80
    800014d4:	00090513          	mv	a0,s2
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	f7c080e7          	jalr	-132(ra) # 80001454 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800014e0:	04848593          	addi	a1,s1,72
    800014e4:	00090513          	mv	a0,s2
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	f3c080e7          	jalr	-196(ra) # 80001424 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	00813483          	ld	s1,8(sp)
    800014fc:	00013903          	ld	s2,0(sp)
    80001500:	02010113          	addi	sp,sp,32
    80001504:	00008067          	ret

0000000080001508 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00113c23          	sd	ra,24(sp)
    80001510:	00813823          	sd	s0,16(sp)
    80001514:	00913423          	sd	s1,8(sp)
    80001518:	01213023          	sd	s2,0(sp)
    8000151c:	02010413          	addi	s0,sp,32
    80001520:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    80001524:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    80001528:	04050593          	addi	a1,a0,64
    8000152c:	00090513          	mv	a0,s2
    80001530:	00000097          	auipc	ra,0x0
    80001534:	f24080e7          	jalr	-220(ra) # 80001454 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001538:	05048593          	addi	a1,s1,80
    8000153c:	00090513          	mv	a0,s2
    80001540:	00000097          	auipc	ra,0x0
    80001544:	ee4080e7          	jalr	-284(ra) # 80001424 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	00013903          	ld	s2,0(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret

0000000080001560 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00113c23          	sd	ra,24(sp)
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	01213023          	sd	s2,0(sp)
    80001574:	02010413          	addi	s0,sp,32
    80001578:	00050913          	mv	s2,a0
    8000157c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001580:	04850593          	addi	a1,a0,72
    80001584:	00048513          	mv	a0,s1
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	ecc080e7          	jalr	-308(ra) # 80001454 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001590:	05090593          	addi	a1,s2,80
    80001594:	00048513          	mv	a0,s1
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	e8c080e7          	jalr	-372(ra) # 80001424 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800015a0:	01813083          	ld	ra,24(sp)
    800015a4:	01013403          	ld	s0,16(sp)
    800015a8:	00813483          	ld	s1,8(sp)
    800015ac:	00013903          	ld	s2,0(sp)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00008067          	ret

00000000800015b8 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	00913423          	sd	s1,8(sp)
    800015c8:	01213023          	sd	s2,0(sp)
    800015cc:	02010413          	addi	s0,sp,32
    800015d0:	00050913          	mv	s2,a0
    800015d4:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800015d8:	05050593          	addi	a1,a0,80
    800015dc:	00048513          	mv	a0,s1
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	e74080e7          	jalr	-396(ra) # 80001454 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800015e8:	04090593          	addi	a1,s2,64
    800015ec:	00048513          	mv	a0,s1
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	e34080e7          	jalr	-460(ra) # 80001424 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	00013903          	ld	s2,0(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    80001610:	fd010113          	addi	sp,sp,-48
    80001614:	02113423          	sd	ra,40(sp)
    80001618:	02813023          	sd	s0,32(sp)
    8000161c:	00913c23          	sd	s1,24(sp)
    80001620:	01213823          	sd	s2,16(sp)
    80001624:	01313423          	sd	s3,8(sp)
    80001628:	03010413          	addi	s0,sp,48
    8000162c:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    80001630:	05853583          	ld	a1,88(a0)
    80001634:	0000a797          	auipc	a5,0xa
    80001638:	3ac7b783          	ld	a5,940(a5) # 8000b9e0 <_ZL13slabAllocator>
    8000163c:	0007b503          	ld	a0,0(a5)
    80001640:	00001097          	auipc	ra,0x1
    80001644:	74c080e7          	jalr	1868(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    80001648:	08050c63          	beqz	a0,800016e0 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    8000164c:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    80001650:	0409b783          	ld	a5,64(s3)
    80001654:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001658:	00078463          	beqz	a5,80001660 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    8000165c:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001660:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001664:	0004b023          	sd	zero,0(s1)
    newSlab->numOfAllocatedObjects = 0;
    80001668:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    8000166c:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001670:	0589b683          	ld	a3,88(s3)
    80001674:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001678:	fb868693          	addi	a3,a3,-72
    8000167c:	0609b783          	ld	a5,96(s3)
    80001680:	02f6d6b3          	divu	a3,a3,a5
    80001684:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001688:	00000713          	li	a4,0
    8000168c:	00768793          	addi	a5,a3,7
    80001690:	0037d793          	srli	a5,a5,0x3
    80001694:	00f77a63          	bgeu	a4,a5,800016a8 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001698:	00e487b3          	add	a5,s1,a4
    8000169c:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    800016a0:	00170713          	addi	a4,a4,1
    800016a4:	fe9ff06f          	j	8000168c <_Z12allocateSlabP12kmem_cache_s+0x7c>

    //TODO
    //test it
    if(cachep->ctor != nullptr)
    800016a8:	0689b783          	ld	a5,104(s3)
    800016ac:	02078a63          	beqz	a5,800016e0 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    800016b0:	00000913          	li	s2,0
    800016b4:	0184b783          	ld	a5,24(s1)
    800016b8:	02f97463          	bgeu	s2,a5,800016e0 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    800016bc:	0689b783          	ld	a5,104(s3)
    800016c0:	0104b703          	ld	a4,16(s1)
    800016c4:	06073503          	ld	a0,96(a4)
    800016c8:	03250533          	mul	a0,a0,s2
    800016cc:	00a48533          	add	a0,s1,a0
    800016d0:	04850513          	addi	a0,a0,72
    800016d4:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    800016d8:	00190913          	addi	s2,s2,1
    800016dc:	fd9ff06f          	j	800016b4 <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }

}
    800016e0:	02813083          	ld	ra,40(sp)
    800016e4:	02013403          	ld	s0,32(sp)
    800016e8:	01813483          	ld	s1,24(sp)
    800016ec:	01013903          	ld	s2,16(sp)
    800016f0:	00813983          	ld	s3,8(sp)
    800016f4:	03010113          	addi	sp,sp,48
    800016f8:	00008067          	ret

00000000800016fc <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00813423          	sd	s0,8(sp)
    80001704:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001708:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000170c:	04850713          	addi	a4,a0,72
    80001710:	00e7f663          	bgeu	a5,a4,8000171c <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001714:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001718:	ff5ff06f          	j	8000170c <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    8000171c:	fb878593          	addi	a1,a5,-72 # fb8 <_entry-0x7ffff048>
    80001720:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //TODO change constants
    80001724:	00100713          	li	a4,1
    80001728:	0080006f          	j	80001730 <_Z18getOptimalSlabSizem+0x34>
    8000172c:	0017071b          	addiw	a4,a4,1
    80001730:	00400693          	li	a3,4
    80001734:	02e6c063          	blt	a3,a4,80001754 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    80001738:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000173c:	fb860693          	addi	a3,a2,-72
    80001740:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    80001744:	feb6f4e3          	bgeu	a3,a1,8000172c <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    80001748:	00068593          	mv	a1,a3
            bestSize = newSize;
    8000174c:	00060793          	mv	a5,a2
    80001750:	fddff06f          	j	8000172c <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001754:	00c7d513          	srli	a0,a5,0xc
    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret

0000000080001764 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001764:	ff010113          	addi	sp,sp,-16
    80001768:	00813423          	sd	s0,8(sp)
    8000176c:	01010413          	addi	s0,sp,16
    80001770:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001774:	02050c63          	beqz	a0,800017ac <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001778:	06058a63          	beqz	a1,800017ec <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    8000177c:	04853503          	ld	a0,72(a0)
    80001780:	0080006f          	j	80001788 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001784:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001788:	02050863          	beqz	a0,800017b8 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    8000178c:	01853783          	ld	a5,24(a0)
    80001790:	01053703          	ld	a4,16(a0)
    80001794:	06073703          	ld	a4,96(a4)
    80001798:	02e787b3          	mul	a5,a5,a4
    8000179c:	00a787b3          	add	a5,a5,a0
    800017a0:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800017a4:	feb570e3          	bgeu	a0,a1,80001784 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    800017a8:	fcf5fee3          	bgeu	a1,a5,80001784 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
    slab = cachep->slabs_partial;
    800017b8:	0506b503          	ld	a0,80(a3)
    800017bc:	0080006f          	j	800017c4 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    800017c0:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800017c4:	fe0504e3          	beqz	a0,800017ac <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800017c8:	01853783          	ld	a5,24(a0)
    800017cc:	01053703          	ld	a4,16(a0)
    800017d0:	06073703          	ld	a4,96(a4)
    800017d4:	02e787b3          	mul	a5,a5,a4
    800017d8:	00a787b3          	add	a5,a5,a0
    800017dc:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800017e0:	feb570e3          	bgeu	a0,a1,800017c0 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800017e4:	fcf5fee3          	bgeu	a1,a5,800017c0 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800017e8:	fc5ff06f          	j	800017ac <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800017ec:	00058513          	mv	a0,a1
    800017f0:	fbdff06f          	j	800017ac <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800017f4 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001800:	41f5d79b          	sraiw	a5,a1,0x1f
    80001804:	01d7d79b          	srliw	a5,a5,0x1d
    80001808:	00b785bb          	addw	a1,a5,a1
    8000180c:	4035d71b          	sraiw	a4,a1,0x3
    80001810:	00e50533          	add	a0,a0,a4
    80001814:	02850703          	lb	a4,40(a0)
    80001818:	0075f593          	andi	a1,a1,7
    8000181c:	40f585bb          	subw	a1,a1,a5
    80001820:	00100793          	li	a5,1
    80001824:	00b795bb          	sllw	a1,a5,a1
    80001828:	fff5c593          	not	a1,a1
    8000182c:	00b775b3          	and	a1,a4,a1
    80001830:	02b50423          	sb	a1,40(a0)
}
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001840:	fe010113          	addi	sp,sp,-32
    80001844:	00113c23          	sd	ra,24(sp)
    80001848:	00813823          	sd	s0,16(sp)
    8000184c:	00913423          	sd	s1,8(sp)
    80001850:	01213023          	sd	s2,0(sp)
    80001854:	02010413          	addi	s0,sp,32
    80001858:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    8000185c:	00007517          	auipc	a0,0x7
    80001860:	7d450513          	addi	a0,a0,2004 # 80009030 <CONSOLE_STATUS+0x20>
    80001864:	00002097          	auipc	ra,0x2
    80001868:	d40080e7          	jalr	-704(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    8000186c:	01000613          	li	a2,16
    80001870:	00090593          	mv	a1,s2
    80001874:	00007517          	auipc	a0,0x7
    80001878:	7d450513          	addi	a0,a0,2004 # 80009048 <CONSOLE_STATUS+0x38>
    8000187c:	00002097          	auipc	ra,0x2
    80001880:	e00080e7          	jalr	-512(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001884:	00a00613          	li	a2,10
    80001888:	02093583          	ld	a1,32(s2)
    8000188c:	00007517          	auipc	a0,0x7
    80001890:	7cc50513          	addi	a0,a0,1996 # 80009058 <CONSOLE_STATUS+0x48>
    80001894:	00002097          	auipc	ra,0x2
    80001898:	de8080e7          	jalr	-536(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    8000189c:	00a00613          	li	a2,10
    800018a0:	01893583          	ld	a1,24(s2)
    800018a4:	00007517          	auipc	a0,0x7
    800018a8:	7d450513          	addi	a0,a0,2004 # 80009078 <CONSOLE_STATUS+0x68>
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	dd0080e7          	jalr	-560(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    800018b4:	00000493          	li	s1,0
    800018b8:	01893783          	ld	a5,24(s2)
    800018bc:	00778793          	addi	a5,a5,7
    800018c0:	0037d793          	srli	a5,a5,0x3
    800018c4:	02f4fa63          	bgeu	s1,a5,800018f8 <_Z13printSlabInfoP6slab_s+0xb8>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    800018c8:	009907b3          	add	a5,s2,s1
    800018cc:	00000613          	li	a2,0
    800018d0:	01000593          	li	a1,16
    800018d4:	0287c503          	lbu	a0,40(a5)
    800018d8:	00002097          	auipc	ra,0x2
    800018dc:	d10080e7          	jalr	-752(ra) # 800035e8 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    800018e0:	00008517          	auipc	a0,0x8
    800018e4:	d2850513          	addi	a0,a0,-728 # 80009608 <CONSOLE_STATUS+0x5f8>
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	cbc080e7          	jalr	-836(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    800018f0:	00148493          	addi	s1,s1,1
    800018f4:	fc5ff06f          	j	800018b8 <_Z13printSlabInfoP6slab_s+0x78>
    }
}
    800018f8:	01813083          	ld	ra,24(sp)
    800018fc:	01013403          	ld	s0,16(sp)
    80001900:	00813483          	ld	s1,8(sp)
    80001904:	00013903          	ld	s2,0(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001910:	0e050463          	beqz	a0,800019f8 <_Z16free_slab_objectP6slab_sPKv+0xe8>
{
    80001914:	fe010113          	addi	sp,sp,-32
    80001918:	00113c23          	sd	ra,24(sp)
    8000191c:	00813823          	sd	s0,16(sp)
    80001920:	00913423          	sd	s1,8(sp)
    80001924:	02010413          	addi	s0,sp,32
    80001928:	00050493          	mv	s1,a0
    8000192c:	00058693          	mv	a3,a1
    if(slab == nullptr || objp == nullptr)
    80001930:	02058663          	beqz	a1,8000195c <_Z16free_slab_objectP6slab_sPKv+0x4c>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001934:	40a58733          	sub	a4,a1,a0
    80001938:	fb870713          	addi	a4,a4,-72
    8000193c:	01053783          	ld	a5,16(a0)
    80001940:	0607b783          	ld	a5,96(a5)
    80001944:	02f75733          	divu	a4,a4,a5
    80001948:	0007059b          	sext.w	a1,a4
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    8000194c:	02b787b3          	mul	a5,a5,a1
    80001950:	00f507b3          	add	a5,a0,a5
    80001954:	04878793          	addi	a5,a5,72
    80001958:	00f68c63          	beq	a3,a5,80001970 <_Z16free_slab_objectP6slab_sPKv+0x60>
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
}
    8000195c:	01813083          	ld	ra,24(sp)
    80001960:	01013403          	ld	s0,16(sp)
    80001964:	00813483          	ld	s1,8(sp)
    80001968:	02010113          	addi	sp,sp,32
    8000196c:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    80001970:	00000097          	auipc	ra,0x0
    80001974:	e84080e7          	jalr	-380(ra) # 800017f4 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001978:	0184b703          	ld	a4,24(s1)
    8000197c:	0204b783          	ld	a5,32(s1)
    80001980:	00f70c63          	beq	a4,a5,80001998 <_Z16free_slab_objectP6slab_sPKv+0x88>
    else if(slab->numOfAllocatedObjects == 1)
    80001984:	00100713          	li	a4,1
    80001988:	04e78863          	beq	a5,a4,800019d8 <_Z16free_slab_objectP6slab_sPKv+0xc8>
        slab->numOfAllocatedObjects--;
    8000198c:	fff78793          	addi	a5,a5,-1
    80001990:	02f4b023          	sd	a5,32(s1)
    80001994:	fc9ff06f          	j	8000195c <_Z16free_slab_objectP6slab_sPKv+0x4c>
        removeFullSlab(slab->owner, slab);
    80001998:	00048593          	mv	a1,s1
    8000199c:	0104b503          	ld	a0,16(s1)
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	bc0080e7          	jalr	-1088(ra) # 80001560 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    800019a8:	0204b783          	ld	a5,32(s1)
    800019ac:	fff78793          	addi	a5,a5,-1
    800019b0:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	a4c080e7          	jalr	-1460(ra) # 80001404 <_Z5emptyP6slab_s>
    800019c0:	f8050ee3          	beqz	a0,8000195c <_Z16free_slab_objectP6slab_sPKv+0x4c>
            removePartialSlab(slab->owner, slab);
    800019c4:	00048593          	mv	a1,s1
    800019c8:	0104b503          	ld	a0,16(s1)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	bec080e7          	jalr	-1044(ra) # 800015b8 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    800019d4:	f89ff06f          	j	8000195c <_Z16free_slab_objectP6slab_sPKv+0x4c>
        removePartialSlab(slab->owner, slab);
    800019d8:	00048593          	mv	a1,s1
    800019dc:	0104b503          	ld	a0,16(s1)
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	bd8080e7          	jalr	-1064(ra) # 800015b8 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    800019e8:	0204b783          	ld	a5,32(s1)
    800019ec:	fff78793          	addi	a5,a5,-1
    800019f0:	02f4b023          	sd	a5,32(s1)
    800019f4:	f69ff06f          	j	8000195c <_Z16free_slab_objectP6slab_sPKv+0x4c>
    800019f8:	00008067          	ret

00000000800019fc <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	570080e7          	jalr	1392(ra) # 80002f7c <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	878080e7          	jalr	-1928(ra) # 8000128c <_Z19slab_allocator_initP14buddyAllocator>
    80001a1c:	0000a797          	auipc	a5,0xa
    80001a20:	fca7b223          	sd	a0,-60(a5) # 8000b9e0 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->errors = NO_ERROR;
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001a34:	fe010113          	addi	sp,sp,-32
    80001a38:	00113c23          	sd	ra,24(sp)
    80001a3c:	00813823          	sd	s0,16(sp)
    80001a40:	00913423          	sd	s1,8(sp)
    80001a44:	01213023          	sd	s2,0(sp)
    80001a48:	02010413          	addi	s0,sp,32
    80001a4c:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001a50:	05053503          	ld	a0,80(a0)
    80001a54:	04051a63          	bnez	a0,80001aa8 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001a58:	0404b503          	ld	a0,64(s1)
    80001a5c:	08050a63          	beqz	a0,80001af0 <_Z16kmem_cache_allocP12kmem_cache_s+0xbc>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	8c8080e7          	jalr	-1848(ra) # 80001328 <_Z14allocateObjectP6slab_s>
    80001a68:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001a6c:	0404b503          	ld	a0,64(s1)
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	994080e7          	jalr	-1644(ra) # 80001404 <_Z5emptyP6slab_s>
    80001a78:	04051663          	bnez	a0,80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        {
            putEmptyToPartial(cachep);
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	a88080e7          	jalr	-1400(ra) # 80001508 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001a88:	0504b503          	ld	a0,80(s1)
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	950080e7          	jalr	-1712(ra) # 800013dc <_Z4fullP6slab_s>
    80001a94:	02050863          	beqz	a0,80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
                putPartialToFull(cachep);
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	a14080e7          	jalr	-1516(ra) # 800014b0 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001aa4:	0200006f          	j	80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	880080e7          	jalr	-1920(ra) # 80001328 <_Z14allocateObjectP6slab_s>
    80001ab0:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001ab4:	0504b503          	ld	a0,80(s1)
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	924080e7          	jalr	-1756(ra) # 800013dc <_Z4fullP6slab_s>
    80001ac0:	02051063          	bnez	a0,80001ae0 <_Z16kmem_cache_allocP12kmem_cache_s+0xac>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001ac4:	00090513          	mv	a0,s2
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	00013903          	ld	s2,0(sp)
    80001ad8:	02010113          	addi	sp,sp,32
    80001adc:	00008067          	ret
            putPartialToFull(cachep);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	9cc080e7          	jalr	-1588(ra) # 800014b0 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001aec:	fd9ff06f          	j	80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        allocateSlab(cachep);
    80001af0:	00048513          	mv	a0,s1
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	b1c080e7          	jalr	-1252(ra) # 80001610 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001afc:	0404b903          	ld	s2,64(s1)
    80001b00:	04090863          	beqz	s2,80001b50 <_Z16kmem_cache_allocP12kmem_cache_s+0x11c>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001b04:	00090513          	mv	a0,s2
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	820080e7          	jalr	-2016(ra) # 80001328 <_Z14allocateObjectP6slab_s>
    80001b10:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001b14:	0404b503          	ld	a0,64(s1)
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	8ec080e7          	jalr	-1812(ra) # 80001404 <_Z5emptyP6slab_s>
    80001b20:	fa0512e3          	bnez	a0,80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
            putEmptyToPartial(cachep);
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	9e0080e7          	jalr	-1568(ra) # 80001508 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001b30:	0504b503          	ld	a0,80(s1)
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	8a8080e7          	jalr	-1880(ra) # 800013dc <_Z4fullP6slab_s>
    80001b3c:	f80504e3          	beqz	a0,80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
                putPartialToFull(cachep);
    80001b40:	00048513          	mv	a0,s1
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	96c080e7          	jalr	-1684(ra) # 800014b0 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001b4c:	f79ff06f          	j	80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
            cachep->errors|=EXPAND_ERROR;
    80001b50:	0784a783          	lw	a5,120(s1)
    80001b54:	0017e793          	ori	a5,a5,1
    80001b58:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001b5c:	f69ff06f          	j	80001ac4 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>

0000000080001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001b60:	fc010113          	addi	sp,sp,-64
    80001b64:	02113c23          	sd	ra,56(sp)
    80001b68:	02813823          	sd	s0,48(sp)
    80001b6c:	02913423          	sd	s1,40(sp)
    80001b70:	03213023          	sd	s2,32(sp)
    80001b74:	01313c23          	sd	s3,24(sp)
    80001b78:	01413823          	sd	s4,16(sp)
    80001b7c:	01513423          	sd	s5,8(sp)
    80001b80:	04010413          	addi	s0,sp,64
    80001b84:	00050993          	mv	s3,a0
    80001b88:	00058913          	mv	s2,a1
    80001b8c:	00060a13          	mv	s4,a2
    80001b90:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001b94:	0000a517          	auipc	a0,0xa
    80001b98:	e4c53503          	ld	a0,-436(a0) # 8000b9e0 <_ZL13slabAllocator>
    80001b9c:	07050513          	addi	a0,a0,112
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	e94080e7          	jalr	-364(ra) # 80001a34 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001ba8:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001bac:	04053023          	sd	zero,64(a0)
    newCache->slabs_partial = nullptr;
    80001bb0:	04053823          	sd	zero,80(a0)
    newCache->slabs_full = nullptr;
    80001bb4:	04053423          	sd	zero,72(a0)
    newCache->dtor = dtor;
    80001bb8:	07553823          	sd	s5,112(a0)
    newCache->ctor = ctor;
    80001bbc:	07453423          	sd	s4,104(a0)
    strcpy(name, newCache->cacheName);
    80001bc0:	00050593          	mv	a1,a0
    80001bc4:	00098513          	mv	a0,s3
    80001bc8:	fffff097          	auipc	ra,0xfffff
    80001bcc:	690080e7          	jalr	1680(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001bd0:	0724b023          	sd	s2,96(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001bd4:	00090513          	mv	a0,s2
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	b24080e7          	jalr	-1244(ra) # 800016fc <_Z18getOptimalSlabSizem>
    80001be0:	04a4bc23          	sd	a0,88(s1)
    newCache->errors = NO_ERROR;
    80001be4:	0604ac23          	sw	zero,120(s1)
}
    80001be8:	00048513          	mv	a0,s1
    80001bec:	03813083          	ld	ra,56(sp)
    80001bf0:	03013403          	ld	s0,48(sp)
    80001bf4:	02813483          	ld	s1,40(sp)
    80001bf8:	02013903          	ld	s2,32(sp)
    80001bfc:	01813983          	ld	s3,24(sp)
    80001c00:	01013a03          	ld	s4,16(sp)
    80001c04:	00813a83          	ld	s5,8(sp)
    80001c08:	04010113          	addi	sp,sp,64
    80001c0c:	00008067          	ret

0000000080001c10 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001c10:	08050463          	beqz	a0,80001c98 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x88>
{
    80001c14:	fd010113          	addi	sp,sp,-48
    80001c18:	02113423          	sd	ra,40(sp)
    80001c1c:	02813023          	sd	s0,32(sp)
    80001c20:	00913c23          	sd	s1,24(sp)
    80001c24:	01213823          	sd	s2,16(sp)
    80001c28:	01313423          	sd	s3,8(sp)
    80001c2c:	03010413          	addi	s0,sp,48
    80001c30:	00050913          	mv	s2,a0
    80001c34:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001c38:	04058263          	beqz	a1,80001c7c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	b28080e7          	jalr	-1240(ra) # 80001764 <_Z8findSlabP12kmem_cache_sPKv>
    80001c44:	00050993          	mv	s3,a0
    if(slab == nullptr) return;
    80001c48:	02050a63          	beqz	a0,80001c7c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x6c>

    //TODO
    //test it
    if(cachep->dtor != nullptr)
    80001c4c:	07093783          	ld	a5,112(s2)
    80001c50:	00078663          	beqz	a5,80001c5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
        cachep->dtor(objp);
    80001c54:	00048513          	mv	a0,s1
    80001c58:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001c5c:	06893783          	ld	a5,104(s2)
    80001c60:	00078663          	beqz	a5,80001c6c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x5c>
        cachep->ctor(objp);
    80001c64:	00048513          	mv	a0,s1
    80001c68:	000780e7          	jalr	a5

    free_slab_object(slab, objp);
    80001c6c:	00048593          	mv	a1,s1
    80001c70:	00098513          	mv	a0,s3
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	c9c080e7          	jalr	-868(ra) # 80001910 <_Z16free_slab_objectP6slab_sPKv>
}
    80001c7c:	02813083          	ld	ra,40(sp)
    80001c80:	02013403          	ld	s0,32(sp)
    80001c84:	01813483          	ld	s1,24(sp)
    80001c88:	01013903          	ld	s2,16(sp)
    80001c8c:	00813983          	ld	s3,8(sp)
    80001c90:	03010113          	addi	sp,sp,48
    80001c94:	00008067          	ret
    80001c98:	00008067          	ret

0000000080001c9c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001c9c:	fe010113          	addi	sp,sp,-32
    80001ca0:	00113c23          	sd	ra,24(sp)
    80001ca4:	00813823          	sd	s0,16(sp)
    80001ca8:	00913423          	sd	s1,8(sp)
    80001cac:	01213023          	sd	s2,0(sp)
    80001cb0:	02010413          	addi	s0,sp,32
    80001cb4:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001cb8:	00007517          	auipc	a0,0x7
    80001cbc:	3d850513          	addi	a0,a0,984 # 80009090 <CONSOLE_STATUS+0x80>
    80001cc0:	00002097          	auipc	ra,0x2
    80001cc4:	8e4080e7          	jalr	-1820(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001cc8:	00007517          	auipc	a0,0x7
    80001ccc:	40050513          	addi	a0,a0,1024 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	8d4080e7          	jalr	-1836(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001cd8:	00090513          	mv	a0,s2
    80001cdc:	00002097          	auipc	ra,0x2
    80001ce0:	8c8080e7          	jalr	-1848(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    80001ce4:	00008517          	auipc	a0,0x8
    80001ce8:	92450513          	addi	a0,a0,-1756 # 80009608 <CONSOLE_STATUS+0x5f8>
    80001cec:	00002097          	auipc	ra,0x2
    80001cf0:	8b8080e7          	jalr	-1864(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001cf4:	00a00613          	li	a2,10
    80001cf8:	05893583          	ld	a1,88(s2)
    80001cfc:	00007517          	auipc	a0,0x7
    80001d00:	3dc50513          	addi	a0,a0,988 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	978080e7          	jalr	-1672(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001d0c:	00a00613          	li	a2,10
    80001d10:	06093583          	ld	a1,96(s2)
    80001d14:	00007517          	auipc	a0,0x7
    80001d18:	3e450513          	addi	a0,a0,996 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001d1c:	00002097          	auipc	ra,0x2
    80001d20:	960080e7          	jalr	-1696(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001d24:	00007517          	auipc	a0,0x7
    80001d28:	3f450513          	addi	a0,a0,1012 # 80009118 <CONSOLE_STATUS+0x108>
    80001d2c:	00002097          	auipc	ra,0x2
    80001d30:	878080e7          	jalr	-1928(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001d34:	00007517          	auipc	a0,0x7
    80001d38:	40450513          	addi	a0,a0,1028 # 80009138 <CONSOLE_STATUS+0x128>
    80001d3c:	00002097          	auipc	ra,0x2
    80001d40:	868080e7          	jalr	-1944(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001d44:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001d48:	00048c63          	beqz	s1,80001d60 <_Z15kmem_cache_infoP12kmem_cache_s+0xc4>
    {
        printSlabInfo(slab);
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	af0080e7          	jalr	-1296(ra) # 80001840 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001d58:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001d5c:	fedff06f          	j	80001d48 <_Z15kmem_cache_infoP12kmem_cache_s+0xac>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001d60:	00007517          	auipc	a0,0x7
    80001d64:	3e850513          	addi	a0,a0,1000 # 80009148 <CONSOLE_STATUS+0x138>
    80001d68:	00002097          	auipc	ra,0x2
    80001d6c:	83c080e7          	jalr	-1988(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001d70:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001d74:	00048c63          	beqz	s1,80001d8c <_Z15kmem_cache_infoP12kmem_cache_s+0xf0>
    {
        printSlabInfo(slab);
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	ac4080e7          	jalr	-1340(ra) # 80001840 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001d84:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001d88:	fedff06f          	j	80001d74 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	3cc50513          	addi	a0,a0,972 # 80009158 <CONSOLE_STATUS+0x148>
    80001d94:	00002097          	auipc	ra,0x2
    80001d98:	810080e7          	jalr	-2032(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001d9c:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001da0:	00048c63          	beqz	s1,80001db8 <_Z15kmem_cache_infoP12kmem_cache_s+0x11c>
    {
        printSlabInfo(slab);
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	a98080e7          	jalr	-1384(ra) # 80001840 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001db0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001db4:	fedff06f          	j	80001da0 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    }
}
    80001db8:	01813083          	ld	ra,24(sp)
    80001dbc:	01013403          	ld	s0,16(sp)
    80001dc0:	00813483          	ld	s1,8(sp)
    80001dc4:	00013903          	ld	s2,0(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret

0000000080001dd0 <_Z22printSlabAllocatorInfov>:
{
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001de4:	00007517          	auipc	a0,0x7
    80001de8:	38450513          	addi	a0,a0,900 # 80009168 <CONSOLE_STATUS+0x158>
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	7b8080e7          	jalr	1976(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001df4:	0000a497          	auipc	s1,0xa
    80001df8:	bec48493          	addi	s1,s1,-1044 # 8000b9e0 <_ZL13slabAllocator>
    80001dfc:	0004b783          	ld	a5,0(s1)
    80001e00:	01000613          	li	a2,16
    80001e04:	0007b583          	ld	a1,0(a5)
    80001e08:	00007517          	auipc	a0,0x7
    80001e0c:	3b050513          	addi	a0,a0,944 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001e10:	00002097          	auipc	ra,0x2
    80001e14:	86c080e7          	jalr	-1940(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001e18:	01000613          	li	a2,16
    80001e1c:	0004b583          	ld	a1,0(s1)
    80001e20:	00007517          	auipc	a0,0x7
    80001e24:	3b850513          	addi	a0,a0,952 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001e28:	00002097          	auipc	ra,0x2
    80001e2c:	854080e7          	jalr	-1964(ra) # 8000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	3c050513          	addi	a0,a0,960 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	76c080e7          	jalr	1900(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001e40:	0004b503          	ld	a0,0(s1)
    80001e44:	07050513          	addi	a0,a0,112
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	e54080e7          	jalr	-428(ra) # 80001c9c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001e50:	00007517          	auipc	a0,0x7
    80001e54:	3b850513          	addi	a0,a0,952 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	74c080e7          	jalr	1868(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e60:	00000493          	li	s1,0
    80001e64:	0100006f          	j	80001e74 <_Z22printSlabAllocatorInfov+0xa4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	e34080e7          	jalr	-460(ra) # 80001c9c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e70:	00148493          	addi	s1,s1,1
    80001e74:	00c00793          	li	a5,12
    80001e78:	0297e063          	bltu	a5,s1,80001e98 <_Z22printSlabAllocatorInfov+0xc8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80001e7c:	00349793          	slli	a5,s1,0x3
    80001e80:	0000a717          	auipc	a4,0xa
    80001e84:	b6073703          	ld	a4,-1184(a4) # 8000b9e0 <_ZL13slabAllocator>
    80001e88:	00f707b3          	add	a5,a4,a5
    80001e8c:	0087b503          	ld	a0,8(a5)
    80001e90:	fc051ce3          	bnez	a0,80001e68 <_Z22printSlabAllocatorInfov+0x98>
    80001e94:	fddff06f          	j	80001e70 <_Z22printSlabAllocatorInfov+0xa0>
}
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret

0000000080001eac <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001eac:	fd010113          	addi	sp,sp,-48
    80001eb0:	02113423          	sd	ra,40(sp)
    80001eb4:	02813023          	sd	s0,32(sp)
    80001eb8:	00913c23          	sd	s1,24(sp)
    80001ebc:	01213823          	sd	s2,16(sp)
    80001ec0:	01313423          	sd	s3,8(sp)
    80001ec4:	01413023          	sd	s4,0(sp)
    80001ec8:	03010413          	addi	s0,sp,48
    80001ecc:	00050993          	mv	s3,a0
    size_t level = getDeg2Ceil(size);
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	d40080e7          	jalr	-704(ra) # 80002c10 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80001ed8:	00400793          	li	a5,4
    80001edc:	00a7fa63          	bgeu	a5,a0,80001ef0 <_Z7kmallocm+0x44>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80001ee0:	01100793          	li	a5,17
    80001ee4:	00a7f863          	bgeu	a5,a0,80001ef4 <_Z7kmallocm+0x48>
        return nullptr;
    80001ee8:	00000513          	li	a0,0
    80001eec:	0400006f          	j	80001f2c <_Z7kmallocm+0x80>
        level = CACHE_BUFFER_SMALL;
    80001ef0:	00500513          	li	a0,5
    size_t index = level - CACHE_BUFFER_SMALL;
    80001ef4:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001ef8:	0000a917          	auipc	s2,0xa
    80001efc:	ae893903          	ld	s2,-1304(s2) # 8000b9e0 <_ZL13slabAllocator>
    80001f00:	00349793          	slli	a5,s1,0x3
    80001f04:	00f907b3          	add	a5,s2,a5
    80001f08:	0087b783          	ld	a5,8(a5)
    80001f0c:	04078063          	beqz	a5,80001f4c <_Z7kmallocm+0xa0>
        slabAllocator->cachesBuffers[index]->obj_size = size;
        slabAllocator->cachesBuffers[index]->slab_size = getOptimalSlabSize(size);
        slabAllocator->cachesBuffers[index]->errors = NO_ERROR;
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001f10:	00349513          	slli	a0,s1,0x3
    80001f14:	0000a497          	auipc	s1,0xa
    80001f18:	acc4b483          	ld	s1,-1332(s1) # 8000b9e0 <_ZL13slabAllocator>
    80001f1c:	00a48533          	add	a0,s1,a0
    80001f20:	00853503          	ld	a0,8(a0)
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	b10080e7          	jalr	-1264(ra) # 80001a34 <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001f2c:	02813083          	ld	ra,40(sp)
    80001f30:	02013403          	ld	s0,32(sp)
    80001f34:	01813483          	ld	s1,24(sp)
    80001f38:	01013903          	ld	s2,16(sp)
    80001f3c:	00813983          	ld	s3,8(sp)
    80001f40:	00013a03          	ld	s4,0(sp)
    80001f44:	03010113          	addi	sp,sp,48
    80001f48:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001f4c:	07090513          	addi	a0,s2,112
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	ae4080e7          	jalr	-1308(ra) # 80001a34 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001f58:	00349a13          	slli	s4,s1,0x3
    80001f5c:	01490933          	add	s2,s2,s4
    80001f60:	00a93423          	sd	a0,8(s2)
        slabAllocator->cachesBuffers[index]->slabs_empty = nullptr;
    80001f64:	0000a917          	auipc	s2,0xa
    80001f68:	a7c90913          	addi	s2,s2,-1412 # 8000b9e0 <_ZL13slabAllocator>
    80001f6c:	00093783          	ld	a5,0(s2)
    80001f70:	014787b3          	add	a5,a5,s4
    80001f74:	0087b703          	ld	a4,8(a5)
    80001f78:	04073023          	sd	zero,64(a4)
        slabAllocator->cachesBuffers[index]->slabs_partial = nullptr;
    80001f7c:	0087b703          	ld	a4,8(a5)
    80001f80:	04073823          	sd	zero,80(a4)
        slabAllocator->cachesBuffers[index]->slabs_full = nullptr;
    80001f84:	0087b703          	ld	a4,8(a5)
    80001f88:	04073423          	sd	zero,72(a4)
        slabAllocator->cachesBuffers[index]->dtor = nullptr;
    80001f8c:	0087b703          	ld	a4,8(a5)
    80001f90:	06073823          	sd	zero,112(a4)
        slabAllocator->cachesBuffers[index]->ctor = nullptr;
    80001f94:	0087b703          	ld	a4,8(a5)
    80001f98:	06073423          	sd	zero,104(a4)
        strcpy("Cache for small buffers", slabAllocator->cachesBuffers[index]->cacheName);
    80001f9c:	0087b583          	ld	a1,8(a5)
    80001fa0:	00007517          	auipc	a0,0x7
    80001fa4:	28050513          	addi	a0,a0,640 # 80009220 <CONSOLE_STATUS+0x210>
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	2b0080e7          	jalr	688(ra) # 80001258 <_Z6strcpyPKcPc>
        slabAllocator->cachesBuffers[index]->obj_size = size;
    80001fb0:	00093903          	ld	s2,0(s2)
    80001fb4:	01490933          	add	s2,s2,s4
    80001fb8:	00893783          	ld	a5,8(s2)
    80001fbc:	0737b023          	sd	s3,96(a5)
        slabAllocator->cachesBuffers[index]->slab_size = getOptimalSlabSize(size);
    80001fc0:	00893a03          	ld	s4,8(s2)
    80001fc4:	00098513          	mv	a0,s3
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	734080e7          	jalr	1844(ra) # 800016fc <_Z18getOptimalSlabSizem>
    80001fd0:	04aa3c23          	sd	a0,88(s4)
        slabAllocator->cachesBuffers[index]->errors = NO_ERROR;
    80001fd4:	00893783          	ld	a5,8(s2)
    80001fd8:	0607ac23          	sw	zero,120(a5)
    80001fdc:	f35ff06f          	j	80001f10 <_Z7kmallocm+0x64>

0000000080001fe0 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80001fe0:	08050263          	beqz	a0,80002064 <_Z5kfreePKv+0x84>
{
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	01213023          	sd	s2,0(sp)
    80001ff8:	02010413          	addi	s0,sp,32
    80001ffc:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002000:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80002004:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002008:	00c00793          	li	a5,12
    8000200c:	0297e863          	bltu	a5,s1,8000203c <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80002010:	00349793          	slli	a5,s1,0x3
    80002014:	0000a717          	auipc	a4,0xa
    80002018:	9cc73703          	ld	a4,-1588(a4) # 8000b9e0 <_ZL13slabAllocator>
    8000201c:	00f707b3          	add	a5,a4,a5
    80002020:	00090593          	mv	a1,s2
    80002024:	0087b503          	ld	a0,8(a5)
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	73c080e7          	jalr	1852(ra) # 80001764 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80002030:	00051663          	bnez	a0,8000203c <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002034:	00148493          	addi	s1,s1,1
    80002038:	fd1ff06f          	j	80002008 <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    8000203c:	00050863          	beqz	a0,8000204c <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80002040:	00090593          	mv	a1,s2
    80002044:	00000097          	auipc	ra,0x0
    80002048:	8cc080e7          	jalr	-1844(ra) # 80001910 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	00013903          	ld	s2,0(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret
    80002064:	00008067          	ret

0000000080002068 <_Z17destroy_slab_listP6slab_s>:

int destroy_slab_list(slab_t* slab)
{
    80002068:	fd010113          	addi	sp,sp,-48
    8000206c:	02113423          	sd	ra,40(sp)
    80002070:	02813023          	sd	s0,32(sp)
    80002074:	00913c23          	sd	s1,24(sp)
    80002078:	01213823          	sd	s2,16(sp)
    8000207c:	01313423          	sd	s3,8(sp)
    80002080:	03010413          	addi	s0,sp,48
    if(slab == nullptr) return 0;
    80002084:	04050063          	beqz	a0,800020c4 <_Z17destroy_slab_listP6slab_s+0x5c>
    80002088:	00050593          	mv	a1,a0
    size_t sz = slab->owner->slab_size;
    8000208c:	01053783          	ld	a5,16(a0)
    80002090:	0587b903          	ld	s2,88(a5)
    int totalBlocks = 0;
    80002094:	00000493          	li	s1,0
    while(slab != nullptr)
    80002098:	02058863          	beqz	a1,800020c8 <_Z17destroy_slab_listP6slab_s+0x60>
    {
        slab_t* nextSlab = slab->next;
    8000209c:	0085b983          	ld	s3,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    800020a0:	00090613          	mv	a2,s2
    800020a4:	0000a797          	auipc	a5,0xa
    800020a8:	93c7b783          	ld	a5,-1732(a5) # 8000b9e0 <_ZL13slabAllocator>
    800020ac:	0007b503          	ld	a0,0(a5)
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	fac080e7          	jalr	-84(ra) # 8000305c <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
        totalBlocks+=sz;
    800020b8:	009904bb          	addw	s1,s2,s1
        slab = nextSlab;
    800020bc:	00098593          	mv	a1,s3
    while(slab != nullptr)
    800020c0:	fd9ff06f          	j	80002098 <_Z17destroy_slab_listP6slab_s+0x30>
    if(slab == nullptr) return 0;
    800020c4:	00000493          	li	s1,0
    }
    return totalBlocks;
}
    800020c8:	00048513          	mv	a0,s1
    800020cc:	02813083          	ld	ra,40(sp)
    800020d0:	02013403          	ld	s0,32(sp)
    800020d4:	01813483          	ld	s1,24(sp)
    800020d8:	01013903          	ld	s2,16(sp)
    800020dc:	00813983          	ld	s3,8(sp)
    800020e0:	03010113          	addi	sp,sp,48
    800020e4:	00008067          	ret

00000000800020e8 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00113c23          	sd	ra,24(sp)
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    80002100:	05053783          	ld	a5,80(a0)
    80002104:	02078263          	beqz	a5,80002128 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
    {
        cachep->errors|=DESTROY_ERROR;
    80002108:	0784a783          	lw	a5,120(s1)
    8000210c:	0027e793          	ori	a5,a5,2
    80002110:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(cachep->slabs_empty);
    destroy_slab_list(cachep->slabs_partial);
    destroy_slab_list(cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	00813483          	ld	s1,8(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    80002128:	04853783          	ld	a5,72(a0)
    8000212c:	fc079ee3          	bnez	a5,80002108 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(cachep->slabs_empty);
    80002130:	04053503          	ld	a0,64(a0)
    80002134:	00000097          	auipc	ra,0x0
    80002138:	f34080e7          	jalr	-204(ra) # 80002068 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    8000213c:	0504b503          	ld	a0,80(s1)
    80002140:	00000097          	auipc	ra,0x0
    80002144:	f28080e7          	jalr	-216(ra) # 80002068 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    80002148:	0484b503          	ld	a0,72(s1)
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	f1c080e7          	jalr	-228(ra) # 80002068 <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002154:	00048593          	mv	a1,s1
    80002158:	0000a517          	auipc	a0,0xa
    8000215c:	88853503          	ld	a0,-1912(a0) # 8000b9e0 <_ZL13slabAllocator>
    80002160:	07050513          	addi	a0,a0,112
    80002164:	00000097          	auipc	ra,0x0
    80002168:	aac080e7          	jalr	-1364(ra) # 80001c10 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    8000216c:	fa9ff06f          	j	80002114 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

0000000080002170 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002170:	04050063          	beqz	a0,800021b0 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x40>
{
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
    80002188:	00050493          	mv	s1,a0
        return 0;
    int totalBlocks = destroy_slab_list(cachep->slabs_empty);
    8000218c:	04053503          	ld	a0,64(a0)
    80002190:	00000097          	auipc	ra,0x0
    80002194:	ed8080e7          	jalr	-296(ra) # 80002068 <_Z17destroy_slab_listP6slab_s>
    cachep->slabs_empty = nullptr;
    80002198:	0404b023          	sd	zero,64(s1)
    return totalBlocks;
}
    8000219c:	01813083          	ld	ra,24(sp)
    800021a0:	01013403          	ld	s0,16(sp)
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	02010113          	addi	sp,sp,32
    800021ac:	00008067          	ret
        return 0;
    800021b0:	00000513          	li	a0,0
}
    800021b4:	00008067          	ret

00000000800021b8 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800021b8:	06050a63          	beqz	a0,8000222c <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    800021bc:	fe010113          	addi	sp,sp,-32
    800021c0:	00113c23          	sd	ra,24(sp)
    800021c4:	00813823          	sd	s0,16(sp)
    800021c8:	00913423          	sd	s1,8(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800021d4:	07852783          	lw	a5,120(a0)
    800021d8:	0017f793          	andi	a5,a5,1
    800021dc:	02079463          	bnez	a5,80002204 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    800021e0:	0784a783          	lw	a5,120(s1)
    800021e4:	0027f793          	andi	a5,a5,2
    800021e8:	02079863          	bnez	a5,80002218 <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800021ec:	0784a503          	lw	a0,120(s1)
}
    800021f0:	01813083          	ld	ra,24(sp)
    800021f4:	01013403          	ld	s0,16(sp)
    800021f8:	00813483          	ld	s1,8(sp)
    800021fc:	02010113          	addi	sp,sp,32
    80002200:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002204:	00007517          	auipc	a0,0x7
    80002208:	03450513          	addi	a0,a0,52 # 80009238 <CONSOLE_STATUS+0x228>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	398080e7          	jalr	920(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    80002214:	fcdff06f          	j	800021e0 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002218:	00007517          	auipc	a0,0x7
    8000221c:	03050513          	addi	a0,a0,48 # 80009248 <CONSOLE_STATUS+0x238>
    80002220:	00001097          	auipc	ra,0x1
    80002224:	384080e7          	jalr	900(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    80002228:	fc5ff06f          	j	800021ec <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    8000222c:	00000513          	li	a0,0
}
    80002230:	00008067          	ret

0000000080002234 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002240:	03f50513          	addi	a0,a0,63
    80002244:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80002248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000224c:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002250:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80002254:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002270:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80002274:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80002278:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000227c:	00050513          	mv	a0,a0

    return result;
}
    80002280:	0005051b          	sext.w	a0,a0
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002290:	fd010113          	addi	sp,sp,-48
    80002294:	02113423          	sd	ra,40(sp)
    80002298:	02813023          	sd	s0,32(sp)
    8000229c:	00913c23          	sd	s1,24(sp)
    800022a0:	01213823          	sd	s2,16(sp)
    800022a4:	01313423          	sd	s3,8(sp)
    800022a8:	03010413          	addi	s0,sp,48
    800022ac:	00050493          	mv	s1,a0
    800022b0:	00058913          	mv	s2,a1
    800022b4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800022b8:	00001537          	lui	a0,0x1
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	f78080e7          	jalr	-136(ra) # 80002234 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800022c4:	04050263          	beqz	a0,80002308 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800022c8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800022cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800022d0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800022d4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800022d8:	01100793          	li	a5,17
    800022dc:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800022e0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022e4:	00050513          	mv	a0,a0

    return result;
    800022e8:	0005051b          	sext.w	a0,a0
}
    800022ec:	02813083          	ld	ra,40(sp)
    800022f0:	02013403          	ld	s0,32(sp)
    800022f4:	01813483          	ld	s1,24(sp)
    800022f8:	01013903          	ld	s2,16(sp)
    800022fc:	00813983          	ld	s3,8(sp)
    80002300:	03010113          	addi	sp,sp,48
    80002304:	00008067          	ret
        return -1;
    80002308:	fff00513          	li	a0,-1
    8000230c:	fe1ff06f          	j	800022ec <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080002310 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813423          	sd	s0,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000231c:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002320:	00000073          	ecall
}
    80002324:	00813403          	ld	s0,8(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_Z11thread_exitv>:

int thread_exit()
{
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00813423          	sd	s0,8(sp)
    80002338:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000233c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80002340:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002344:	00050513          	mv	a0,a0
    return result;
}
    80002348:	0005051b          	sext.w	a0,a0
    8000234c:	00813403          	ld	s0,8(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00813423          	sd	s0,8(sp)
    80002360:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80002364:	02059593          	slli	a1,a1,0x20
    80002368:	0205d593          	srli	a1,a1,0x20
    8000236c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002370:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80002374:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80002378:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000237c:	00050513          	mv	a0,a0
    return result;
}
    80002380:	0005051b          	sext.w	a0,a0
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000239c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800023a0:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800023a4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023a8:	00050513          	mv	a0,a0
    return result;
}
    800023ac:	0005051b          	sext.w	a0,a0
    800023b0:	00813403          	ld	s0,8(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800023c8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800023cc:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800023d0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023d4:	00050513          	mv	a0,a0
    return result;
}
    800023d8:	0005051b          	sext.w	a0,a0
    800023dc:	00813403          	ld	s0,8(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00813423          	sd	s0,8(sp)
    800023f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800023f4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800023f8:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800023fc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002400:	00050513          	mv	a0,a0
    return result;
}
    80002404:	0005051b          	sext.w	a0,a0
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002420:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80002424:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002428:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000242c:	00050513          	mv	a0,a0
    return result;
}
    80002430:	0005051b          	sext.w	a0,a0
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret

0000000080002440 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000244c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002450:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002454:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002458:	00050513          	mv	a0,a0
    return result;
}
    8000245c:	0005051b          	sext.w	a0,a0
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000246c:	fd010113          	addi	sp,sp,-48
    80002470:	02113423          	sd	ra,40(sp)
    80002474:	02813023          	sd	s0,32(sp)
    80002478:	00913c23          	sd	s1,24(sp)
    8000247c:	01213823          	sd	s2,16(sp)
    80002480:	01313423          	sd	s3,8(sp)
    80002484:	03010413          	addi	s0,sp,48
    80002488:	00050493          	mv	s1,a0
    8000248c:	00058913          	mv	s2,a1
    80002490:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80002494:	00001537          	lui	a0,0x1
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	d9c080e7          	jalr	-612(ra) # 80002234 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800024a0:	04050263          	beqz	a0,800024e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800024a4:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800024a8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800024ac:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800024b0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800024b4:	01400793          	li	a5,20
    800024b8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800024bc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800024c0:	00050513          	mv	a0,a0
    return result;
    800024c4:	0005051b          	sext.w	a0,a0
}
    800024c8:	02813083          	ld	ra,40(sp)
    800024cc:	02013403          	ld	s0,32(sp)
    800024d0:	01813483          	ld	s1,24(sp)
    800024d4:	01013903          	ld	s2,16(sp)
    800024d8:	00813983          	ld	s3,8(sp)
    800024dc:	03010113          	addi	sp,sp,48
    800024e0:	00008067          	ret
        return -1;
    800024e4:	fff00513          	li	a0,-1
    800024e8:	fe1ff06f          	j	800024c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800024ec <_Z4getcv>:

char getc()
{
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00813423          	sd	s0,8(sp)
    800024f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800024f8:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800024fc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002500:	00050513          	mv	a0,a0
    return (char)result;
}
    80002504:	0ff57513          	andi	a0,a0,255
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_Z4putcc>:

void putc(char c)
{
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00813423          	sd	s0,8(sp)
    8000251c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002520:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80002524:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002528:	00000073          	ecall
}
    8000252c:	00813403          	ld	s0,8(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00813423          	sd	s0,8(sp)
    80002540:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80002544:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002548:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000254c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002550:	0ff57513          	andi	a0,a0,255
    80002554:	00813403          	ld	s0,8(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000256c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002570:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80002574:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002578:	00050513          	mv	a0,a0
    return (char)result;
}
    8000257c:	0ff57513          	andi	a0,a0,255
    80002580:	00813403          	ld	s0,8(sp)
    80002584:	01010113          	addi	sp,sp,16
    80002588:	00008067          	ret

000000008000258c <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00113423          	sd	ra,8(sp)
    80002594:	00813023          	sd	s0,0(sp)
    80002598:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	fc4080e7          	jalr	-60(ra) # 80002560 <_Z17thread_delete_pcbP7_thread>
    800025a4:	00813083          	ld	ra,8(sp)
    800025a8:	00013403          	ld	s0,0(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret

00000000800025b4 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00113423          	sd	ra,8(sp)
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800025c4:	00002097          	auipc	ra,0x2
    800025c8:	db8080e7          	jalr	-584(ra) # 8000437c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800025cc:	00009797          	auipc	a5,0x9
    800025d0:	41c7b783          	ld	a5,1052(a5) # 8000b9e8 <_ZN3PCB7runningE>
    800025d4:	0287b703          	ld	a4,40(a5)
    800025d8:	0307b503          	ld	a0,48(a5)
    800025dc:	000700e7          	jalr	a4

    thread_exit();
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	d50080e7          	jalr	-688(ra) # 80002330 <_Z11thread_exitv>
}
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    })
    80002604:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80002608:	00e53c23          	sd	a4,24(a0)
    8000260c:	02053023          	sd	zero,32(a0)
    80002610:	02b53423          	sd	a1,40(a0)
    80002614:	02c53823          	sd	a2,48(a0)
    80002618:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    8000261c:	000017b7          	lui	a5,0x1
    80002620:	00f686b3          	add	a3,a3,a5
    })
    80002624:	04d53423          	sd	a3,72(a0)
    80002628:	00000797          	auipc	a5,0x0
    8000262c:	f8c78793          	addi	a5,a5,-116 # 800025b4 <_ZN3PCB6runnerEv>
    80002630:	04f53823          	sd	a5,80(a0)
    80002634:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002638:	00053423          	sd	zero,8(a0)
}
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_ZN3PCB5startEv>:
{
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	204080e7          	jalr	516(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
}
    80002660:	00813083          	ld	ra,8(sp)
    80002664:	00013403          	ld	s0,0(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002670:	fe010113          	addi	sp,sp,-32
    80002674:	00113c23          	sd	ra,24(sp)
    80002678:	00813823          	sd	s0,16(sp)
    8000267c:	00913423          	sd	s1,8(sp)
    80002680:	01213023          	sd	s2,0(sp)
    80002684:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002688:	00009497          	auipc	s1,0x9
    8000268c:	3604b483          	ld	s1,864(s1) # 8000b9e8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002690:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002694:	00100793          	li	a5,1
    80002698:	04f70a63          	beq	a4,a5,800026ec <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    8000269c:	00001097          	auipc	ra,0x1
    800026a0:	214080e7          	jalr	532(ra) # 800038b0 <_ZN9Scheduler3getEv>
    800026a4:	00009917          	auipc	s2,0x9
    800026a8:	34490913          	addi	s2,s2,836 # 8000b9e8 <_ZN3PCB7runningE>
    800026ac:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800026b0:	00100793          	li	a5,1
    800026b4:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800026b8:	00002097          	auipc	ra,0x2
    800026bc:	ddc080e7          	jalr	-548(ra) # 80004494 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800026c0:	00093583          	ld	a1,0(s2)
    800026c4:	04858593          	addi	a1,a1,72
    800026c8:	04848513          	addi	a0,s1,72
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	b6c080e7          	jalr	-1172(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	00013903          	ld	s2,0(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret
        Scheduler::put(old);
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	16c080e7          	jalr	364(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
    800026f8:	fa5ff06f          	j	8000269c <_ZN3PCB8dispatchEv+0x2c>

00000000800026fc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    8000270c:	00009797          	auipc	a5,0x9
    80002710:	27c7b783          	ld	a5,636(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002714:	0007b503          	ld	a0,0(a5)
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	31c080e7          	jalr	796(ra) # 80001a34 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    80002740:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002744:	00009797          	auipc	a5,0x9
    80002748:	2447b783          	ld	a5,580(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x90>
    8000274c:	0007b503          	ld	a0,0(a5)
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	4c0080e7          	jalr	1216(ra) # 80001c10 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002758:	00813083          	ld	ra,8(sp)
    8000275c:	00013403          	ld	s0,0(sp)
    80002760:	01010113          	addi	sp,sp,16
    80002764:	00008067          	ret

0000000080002768 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00113423          	sd	ra,8(sp)
    80002770:	00813023          	sd	s0,0(sp)
    80002774:	01010413          	addi	s0,sp,16
{
    //MemoryAllocator::kfree(beginSP);
    kfree(beginSP);
    80002778:	03853503          	ld	a0,56(a0)
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	864080e7          	jalr	-1948(ra) # 80001fe0 <_Z5kfreePKv>
}
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002794:	fd010113          	addi	sp,sp,-48
    80002798:	02113423          	sd	ra,40(sp)
    8000279c:	02813023          	sd	s0,32(sp)
    800027a0:	00913c23          	sd	s1,24(sp)
    800027a4:	01213823          	sd	s2,16(sp)
    800027a8:	01313423          	sd	s3,8(sp)
    800027ac:	01413023          	sd	s4,0(sp)
    800027b0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800027b4:	06000513          	li	a0,96
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	f44080e7          	jalr	-188(ra) # 800026fc <_ZN3PCBnwEm>
    800027c0:	00050493          	mv	s1,a0
    800027c4:	00000713          	li	a4,0
    800027c8:	00000693          	li	a3,0
    800027cc:	00000613          	li	a2,0
    800027d0:	00000593          	li	a1,0
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	e24080e7          	jalr	-476(ra) # 800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800027dc:	00100793          	li	a5,1
    800027e0:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800027e4:	00009917          	auipc	s2,0x9
    800027e8:	20490913          	addi	s2,s2,516 # 8000b9e8 <_ZN3PCB7runningE>
    800027ec:	00993023          	sd	s1,0(s2)
    800027f0:	00100a13          	li	s4,1
    800027f4:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800027f8:	00001537          	lui	a0,0x1
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	6b0080e7          	jalr	1712(ra) # 80001eac <_Z7kmallocm>
    80002804:	00050993          	mv	s3,a0
                              //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    80002808:	06000513          	li	a0,96
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	ef0080e7          	jalr	-272(ra) # 800026fc <_ZN3PCBnwEm>
    80002814:	00050493          	mv	s1,a0
    80002818:	00200713          	li	a4,2
    8000281c:	00098693          	mv	a3,s3
    80002820:	00000613          	li	a2,0
    80002824:	00009597          	auipc	a1,0x9
    80002828:	12c5b583          	ld	a1,300(a1) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	dcc080e7          	jalr	-564(ra) # 800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002834:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002838:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    8000283c:	00893503          	ld	a0,8(s2)
    80002840:	00000097          	auipc	ra,0x0
    80002844:	e08080e7          	jalr	-504(ra) # 80002648 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
                           kmalloc(DEFAULT_STACK_SIZE),
    80002848:	00001537          	lui	a0,0x1
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	660080e7          	jalr	1632(ra) # 80001eac <_Z7kmallocm>
    80002854:	00050993          	mv	s3,a0
                           //MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                           DEFAULT_TIME_SLICE);
    80002858:	06000513          	li	a0,96
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	ea0080e7          	jalr	-352(ra) # 800026fc <_ZN3PCBnwEm>
    80002864:	00050493          	mv	s1,a0
    80002868:	00200713          	li	a4,2
    8000286c:	00098693          	mv	a3,s3
    80002870:	00000613          	li	a2,0
    80002874:	00009597          	auipc	a1,0x9
    80002878:	10c5b583          	ld	a1,268(a1) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	d7c080e7          	jalr	-644(ra) # 800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0,
    80002884:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002888:	00048513          	mv	a0,s1
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	dbc080e7          	jalr	-580(ra) # 80002648 <_ZN3PCB5startEv>
}
    80002894:	02813083          	ld	ra,40(sp)
    80002898:	02013403          	ld	s0,32(sp)
    8000289c:	01813483          	ld	s1,24(sp)
    800028a0:	01013903          	ld	s2,16(sp)
    800028a4:	00813983          	ld	s3,8(sp)
    800028a8:	00013a03          	ld	s4,0(sp)
    800028ac:	03010113          	addi	sp,sp,48
    800028b0:	00008067          	ret

00000000800028b4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800028c0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800028c4:	ffd50513          	addi	a0,a0,-3
}
    800028c8:	00153513          	seqz	a0,a0
    800028cc:	00813403          	ld	s0,8(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800028e8:	00009797          	auipc	a5,0x9
    800028ec:	10078793          	addi	a5,a5,256 # 8000b9e8 <_ZN3PCB7runningE>
    800028f0:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800028f4:	0007b783          	ld	a5,0(a5)
    800028f8:	00300713          	li	a4,3
    800028fc:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002900:	00000097          	auipc	ra,0x0
    80002904:	d70080e7          	jalr	-656(ra) # 80002670 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002908:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000290c:	00002097          	auipc	ra,0x2
    80002910:	b50080e7          	jalr	-1200(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002934:	00009797          	auipc	a5,0x9
    80002938:	0c07b623          	sd	zero,204(a5) # 8000ba00 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	d34080e7          	jalr	-716(ra) # 80002670 <_ZN3PCB8dispatchEv>
}
    80002944:	00813083          	ld	ra,8(sp)
    80002948:	00013403          	ld	s0,0(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00113423          	sd	ra,8(sp)
    8000295c:	00813023          	sd	s0,0(sp)
    80002960:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002964:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002968:	00009717          	auipc	a4,0x9
    8000296c:	08070713          	addi	a4,a4,128 # 8000b9e8 <_ZN3PCB7runningE>
    80002970:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002974:	00073703          	ld	a4,0(a4)
    80002978:	00009697          	auipc	a3,0x9
    8000297c:	fd06b683          	ld	a3,-48(a3) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002980:	0006b683          	ld	a3,0(a3)
    80002984:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002988:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	d54080e7          	jalr	-684(ra) # 800036e0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002994:	00000097          	auipc	ra,0x0
    80002998:	cdc080e7          	jalr	-804(ra) # 80002670 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000299c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029a0:	00002097          	auipc	ra,0x2
    800029a4:	abc080e7          	jalr	-1348(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    800029a8:	00813083          	ld	ra,8(sp)
    800029ac:	00013403          	ld	s0,0(sp)
    800029b0:	01010113          	addi	sp,sp,16
    800029b4:	00008067          	ret

00000000800029b8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800029b8:	fd010113          	addi	sp,sp,-48
    800029bc:	02113423          	sd	ra,40(sp)
    800029c0:	02813023          	sd	s0,32(sp)
    800029c4:	00913c23          	sd	s1,24(sp)
    800029c8:	01213823          	sd	s2,16(sp)
    800029cc:	01313423          	sd	s3,8(sp)
    800029d0:	01413023          	sd	s4,0(sp)
    800029d4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800029d8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800029dc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800029e0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800029e4:	06000513          	li	a0,96
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	d14080e7          	jalr	-748(ra) # 800026fc <_ZN3PCBnwEm>
    800029f0:	00050493          	mv	s1,a0
    800029f4:	00200713          	li	a4,2
    800029f8:	00009697          	auipc	a3,0x9
    800029fc:	0106b683          	ld	a3,16(a3) # 8000ba08 <_ZN3PCB10savedRegA4E>
    80002a00:	000a0613          	mv	a2,s4
    80002a04:	00098593          	mv	a1,s3
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	bf0080e7          	jalr	-1040(ra) # 800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002a10:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002a14:	02048e63          	beqz	s1,80002a50 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	c2c080e7          	jalr	-980(ra) # 80002648 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002a24:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002a28:	00002097          	auipc	ra,0x2
    80002a2c:	a34080e7          	jalr	-1484(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a30:	02813083          	ld	ra,40(sp)
    80002a34:	02013403          	ld	s0,32(sp)
    80002a38:	01813483          	ld	s1,24(sp)
    80002a3c:	01013903          	ld	s2,16(sp)
    80002a40:	00813983          	ld	s3,8(sp)
    80002a44:	00013a03          	ld	s4,0(sp)
    80002a48:	03010113          	addi	sp,sp,48
    80002a4c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a50:	fff00513          	li	a0,-1
    80002a54:	fd5ff06f          	j	80002a28 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002a58 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002a68:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002a6c:	02050463          	beqz	a0,80002a94 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	bd8080e7          	jalr	-1064(ra) # 80002648 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002a78:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	9e0080e7          	jalr	-1568(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002a94:	fff00513          	li	a0,-1
    80002a98:	fe5ff06f          	j	80002a7c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002a9c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002a9c:	fd010113          	addi	sp,sp,-48
    80002aa0:	02113423          	sd	ra,40(sp)
    80002aa4:	02813023          	sd	s0,32(sp)
    80002aa8:	00913c23          	sd	s1,24(sp)
    80002aac:	01213823          	sd	s2,16(sp)
    80002ab0:	01313423          	sd	s3,8(sp)
    80002ab4:	01413023          	sd	s4,0(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002abc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002ac0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002ac4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002ac8:	06000513          	li	a0,96
    80002acc:	00000097          	auipc	ra,0x0
    80002ad0:	c30080e7          	jalr	-976(ra) # 800026fc <_ZN3PCBnwEm>
    80002ad4:	00050493          	mv	s1,a0
    80002ad8:	00200713          	li	a4,2
    80002adc:	00009697          	auipc	a3,0x9
    80002ae0:	f2c6b683          	ld	a3,-212(a3) # 8000ba08 <_ZN3PCB10savedRegA4E>
    80002ae4:	000a0613          	mv	a2,s4
    80002ae8:	00098593          	mv	a1,s3
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	b0c080e7          	jalr	-1268(ra) # 800025f8 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002af4:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002af8:	02048863          	beqz	s1,80002b28 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002afc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b00:	00002097          	auipc	ra,0x2
    80002b04:	95c080e7          	jalr	-1700(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b08:	02813083          	ld	ra,40(sp)
    80002b0c:	02013403          	ld	s0,32(sp)
    80002b10:	01813483          	ld	s1,24(sp)
    80002b14:	01013903          	ld	s2,16(sp)
    80002b18:	00813983          	ld	s3,8(sp)
    80002b1c:	00013a03          	ld	s4,0(sp)
    80002b20:	03010113          	addi	sp,sp,48
    80002b24:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002b28:	fff00513          	li	a0,-1
    80002b2c:	fd5ff06f          	j	80002b00 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002b30 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002b30:	fe010113          	addi	sp,sp,-32
    80002b34:	00113c23          	sd	ra,24(sp)
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002b44:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002b48:	02048e63          	beqz	s1,80002b84 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	c18080e7          	jalr	-1000(ra) # 80002768 <_ZN3PCBD1Ev>
    80002b58:	00048513          	mv	a0,s1
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	bd4080e7          	jalr	-1068(ra) # 80002730 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002b64:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002b68:	00002097          	auipc	ra,0x2
    80002b6c:	8f4080e7          	jalr	-1804(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	02010113          	addi	sp,sp,32
    80002b80:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002b84:	00100513          	li	a0,1
    80002b88:	fe1ff06f          	j	80002b68 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002b8c <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002b98:	fffff7b7          	lui	a5,0xfffff
    80002b9c:	00f57533          	and	a0,a0,a5
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002bac:	ff010113          	addi	sp,sp,-16
    80002bb0:	00113423          	sd	ra,8(sp)
    80002bb4:	00813023          	sd	s0,0(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	fd0080e7          	jalr	-48(ra) # 80002b8c <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002bc4:	000017b7          	lui	a5,0x1
    80002bc8:	00f50533          	add	a0,a0,a5
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002be8:	00000713          	li	a4,0
    size_t x = 1;
    80002bec:	00100793          	li	a5,1
    while(x <= num)
    80002bf0:	00f56863          	bltu	a0,a5,80002c00 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002bf4:	00170713          	addi	a4,a4,1
        x<<=1;
    80002bf8:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002bfc:	ff5ff06f          	j	80002bf0 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002c00:	fff70513          	addi	a0,a4,-1
    80002c04:	00813403          	ld	s0,8(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret

0000000080002c10 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
    80002c1c:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002c20:	00000513          	li	a0,0
    size_t x = 1;
    80002c24:	00100793          	li	a5,1
    while(x < num)
    80002c28:	00e7f863          	bgeu	a5,a4,80002c38 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002c2c:	00150513          	addi	a0,a0,1
        x<<=1;
    80002c30:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002c34:	ff5ff06f          	j	80002c28 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002c38:	00813403          	ld	s0,8(sp)
    80002c3c:	01010113          	addi	sp,sp,16
    80002c40:	00008067          	ret

0000000080002c44 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002c44:	ff010113          	addi	sp,sp,-16
    80002c48:	00813423          	sd	s0,8(sp)
    80002c4c:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002c50:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002c54:	00260793          	addi	a5,a2,2
    80002c58:	00479793          	slli	a5,a5,0x4
    80002c5c:	00f507b3          	add	a5,a0,a5
    80002c60:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002c64:	02078463          	beqz	a5,80002c8c <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002c68:	00260613          	addi	a2,a2,2
    80002c6c:	00461613          	slli	a2,a2,0x4
    80002c70:	00c50633          	add	a2,a0,a2
    80002c74:	00863783          	ld	a5,8(a2)
    80002c78:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002c7c:	00b63423          	sd	a1,8(a2)
    }
}
    80002c80:	00813403          	ld	s0,8(sp)
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002c8c:	00260613          	addi	a2,a2,2
    80002c90:	00461613          	slli	a2,a2,0x4
    80002c94:	00c50633          	add	a2,a0,a2
    80002c98:	00b63423          	sd	a1,8(a2)
    80002c9c:	00b63023          	sd	a1,0(a2)
    80002ca0:	fe1ff06f          	j	80002c80 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002ca4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002ca4:	ff010113          	addi	sp,sp,-16
    80002ca8:	00813423          	sd	s0,8(sp)
    80002cac:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002cb0:	000017b7          	lui	a5,0x1
    80002cb4:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002cb8:	00853783          	ld	a5,8(a0)
    80002cbc:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002cc0:	00f677b3          	and	a5,a2,a5
    80002cc4:	00078a63          	beqz	a5,80002cd8 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002cc8:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002ccc:	00813403          	ld	s0,8(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret
        return (size_t)addr + diff;
    80002cd8:	00c58533          	add	a0,a1,a2
    80002cdc:	ff1ff06f          	j	80002ccc <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002ce0 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002ce0:	fd010113          	addi	sp,sp,-48
    80002ce4:	02113423          	sd	ra,40(sp)
    80002ce8:	02813023          	sd	s0,32(sp)
    80002cec:	00913c23          	sd	s1,24(sp)
    80002cf0:	01213823          	sd	s2,16(sp)
    80002cf4:	01313423          	sd	s3,8(sp)
    80002cf8:	01413023          	sd	s4,0(sp)
    80002cfc:	03010413          	addi	s0,sp,48
    80002d00:	00050913          	mv	s2,a0
    80002d04:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002d08:	06070a63          	beqz	a4,80002d7c <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002d0c:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002d10:	04c68663          	beq	a3,a2,80002d5c <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002d14:	fff68493          	addi	s1,a3,-1
    80002d18:	00048613          	mv	a2,s1
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	f88080e7          	jalr	-120(ra) # 80002ca4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002d24:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002d28:	00000713          	li	a4,0
    80002d2c:	00048693          	mv	a3,s1
    80002d30:	00098613          	mv	a2,s3
    80002d34:	00090513          	mv	a0,s2
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	fa8080e7          	jalr	-88(ra) # 80002ce0 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002d40:	00100713          	li	a4,1
    80002d44:	00048693          	mv	a3,s1
    80002d48:	00098613          	mv	a2,s3
    80002d4c:	000a0593          	mv	a1,s4
    80002d50:	00090513          	mv	a0,s2
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	f8c080e7          	jalr	-116(ra) # 80002ce0 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002d5c:	02813083          	ld	ra,40(sp)
    80002d60:	02013403          	ld	s0,32(sp)
    80002d64:	01813483          	ld	s1,24(sp)
    80002d68:	01013903          	ld	s2,16(sp)
    80002d6c:	00813983          	ld	s3,8(sp)
    80002d70:	00013a03          	ld	s4,0(sp)
    80002d74:	03010113          	addi	sp,sp,48
    80002d78:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002d7c:	00068613          	mv	a2,a3
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	ec4080e7          	jalr	-316(ra) # 80002c44 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002d88:	fd5ff06f          	j	80002d5c <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002d8c <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002d8c:	fe010113          	addi	sp,sp,-32
    80002d90:	00113c23          	sd	ra,24(sp)
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00913423          	sd	s1,8(sp)
    80002d9c:	01213023          	sd	s2,0(sp)
    80002da0:	02010413          	addi	s0,sp,32
    80002da4:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002da8:	00058513          	mv	a0,a1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	e64080e7          	jalr	-412(ra) # 80002c10 <_Z11getDeg2Ceilm>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002db4:	00050693          	mv	a3,a0
    80002db8:	0184b783          	ld	a5,24(s1)
    80002dbc:	06d7e463          	bltu	a5,a3,80002e24 <_Z11buddy_allocP14buddyAllocatorm+0x98>
        if(buddy->bucket[i].first != nullptr)
    80002dc0:	00268793          	addi	a5,a3,2
    80002dc4:	00479793          	slli	a5,a5,0x4
    80002dc8:	00f487b3          	add	a5,s1,a5
    80002dcc:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002dd0:	00091663          	bnez	s2,80002ddc <_Z11buddy_allocP14buddyAllocatorm+0x50>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002dd4:	00168693          	addi	a3,a3,1
    80002dd8:	fe1ff06f          	j	80002db8 <_Z11buddy_allocP14buddyAllocatorm+0x2c>
            buddy->bucket[i].first = ret->next;
    80002ddc:	00093703          	ld	a4,0(s2)
    80002de0:	00268793          	addi	a5,a3,2
    80002de4:	00479793          	slli	a5,a5,0x4
    80002de8:	00f487b3          	add	a5,s1,a5
    80002dec:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002df0:	02070063          	beqz	a4,80002e10 <_Z11buddy_allocP14buddyAllocatorm+0x84>
            split(buddy, (void*)ret, level, i, true);
    80002df4:	00100713          	li	a4,1
    80002df8:	00050613          	mv	a2,a0
    80002dfc:	00090593          	mv	a1,s2
    80002e00:	00048513          	mv	a0,s1
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	edc080e7          	jalr	-292(ra) # 80002ce0 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002e0c:	01c0006f          	j	80002e28 <_Z11buddy_allocP14buddyAllocatorm+0x9c>
                buddy->bucket[i].last = nullptr;
    80002e10:	00268793          	addi	a5,a3,2
    80002e14:	00479793          	slli	a5,a5,0x4
    80002e18:	00f487b3          	add	a5,s1,a5
    80002e1c:	0007b423          	sd	zero,8(a5)
    80002e20:	fd5ff06f          	j	80002df4 <_Z11buddy_allocP14buddyAllocatorm+0x68>
    return nullptr;
    80002e24:	00000913          	li	s2,0
}
    80002e28:	00090513          	mv	a0,s2
    80002e2c:	01813083          	ld	ra,24(sp)
    80002e30:	01013403          	ld	s0,16(sp)
    80002e34:	00813483          	ld	s1,8(sp)
    80002e38:	00013903          	ld	s2,0(sp)
    80002e3c:	02010113          	addi	sp,sp,32
    80002e40:	00008067          	ret

0000000080002e44 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002e44:	fd010113          	addi	sp,sp,-48
    80002e48:	02113423          	sd	ra,40(sp)
    80002e4c:	02813023          	sd	s0,32(sp)
    80002e50:	00913c23          	sd	s1,24(sp)
    80002e54:	01213823          	sd	s2,16(sp)
    80002e58:	01313423          	sd	s3,8(sp)
    80002e5c:	03010413          	addi	s0,sp,48
    80002e60:	00050493          	mv	s1,a0
    80002e64:	00058993          	mv	s3,a1
    80002e68:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002e6c:	01853783          	ld	a5,24(a0)
    80002e70:	02c78a63          	beq	a5,a2,80002ea4 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	e30080e7          	jalr	-464(ra) # 80002ca4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002e7c:	00290793          	addi	a5,s2,2
    80002e80:	00479793          	slli	a5,a5,0x4
    80002e84:	00f487b3          	add	a5,s1,a5
    80002e88:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002e8c:	00000713          	li	a4,0
    while(curr != nullptr)
    80002e90:	0a078e63          	beqz	a5,80002f4c <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002e94:	00a78e63          	beq	a5,a0,80002eb0 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002e98:	00078713          	mv	a4,a5
        curr = curr->next;
    80002e9c:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002ea0:	ff1ff06f          	j	80002e90 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	da0080e7          	jalr	-608(ra) # 80002c44 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002eac:	0b40006f          	j	80002f60 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002eb0:	04070863          	beqz	a4,80002f00 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002eb4:	0007b683          	ld	a3,0(a5)
    80002eb8:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002ebc:	00290693          	addi	a3,s2,2
    80002ec0:	00469693          	slli	a3,a3,0x4
    80002ec4:	00d486b3          	add	a3,s1,a3
    80002ec8:	0086b683          	ld	a3,8(a3)
    80002ecc:	02f68063          	beq	a3,a5,80002eec <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002ed0:	06a9f263          	bgeu	s3,a0,80002f34 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002ed4:	00190613          	addi	a2,s2,1
    80002ed8:	00098593          	mv	a1,s3
    80002edc:	00048513          	mv	a0,s1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	f64080e7          	jalr	-156(ra) # 80002e44 <_Z9addBlocksP14buddyAllocatorPvm>
    80002ee8:	0780006f          	j	80002f60 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002eec:	00290793          	addi	a5,s2,2
    80002ef0:	00479793          	slli	a5,a5,0x4
    80002ef4:	00f487b3          	add	a5,s1,a5
    80002ef8:	00e7b423          	sd	a4,8(a5)
    80002efc:	fd5ff06f          	j	80002ed0 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002f00:	0007b703          	ld	a4,0(a5)
    80002f04:	00070c63          	beqz	a4,80002f1c <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002f08:	00290793          	addi	a5,s2,2
    80002f0c:	00479793          	slli	a5,a5,0x4
    80002f10:	00f487b3          	add	a5,s1,a5
    80002f14:	00e7b023          	sd	a4,0(a5)
    80002f18:	fb9ff06f          	j	80002ed0 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002f1c:	00290793          	addi	a5,s2,2
    80002f20:	00479793          	slli	a5,a5,0x4
    80002f24:	00f487b3          	add	a5,s1,a5
    80002f28:	0007b423          	sd	zero,8(a5)
    80002f2c:	0007b023          	sd	zero,0(a5)
    80002f30:	fa1ff06f          	j	80002ed0 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002f34:	00190613          	addi	a2,s2,1
    80002f38:	00050593          	mv	a1,a0
    80002f3c:	00048513          	mv	a0,s1
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	f04080e7          	jalr	-252(ra) # 80002e44 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002f48:	0180006f          	j	80002f60 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002f4c:	00090613          	mv	a2,s2
    80002f50:	00098593          	mv	a1,s3
    80002f54:	00048513          	mv	a0,s1
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	cec080e7          	jalr	-788(ra) # 80002c44 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002f60:	02813083          	ld	ra,40(sp)
    80002f64:	02013403          	ld	s0,32(sp)
    80002f68:	01813483          	ld	s1,24(sp)
    80002f6c:	01013903          	ld	s2,16(sp)
    80002f70:	00813983          	ld	s3,8(sp)
    80002f74:	03010113          	addi	sp,sp,48
    80002f78:	00008067          	ret

0000000080002f7c <_Z10buddy_initPvm>:
{
    80002f7c:	fd010113          	addi	sp,sp,-48
    80002f80:	02113423          	sd	ra,40(sp)
    80002f84:	02813023          	sd	s0,32(sp)
    80002f88:	00913c23          	sd	s1,24(sp)
    80002f8c:	01213823          	sd	s2,16(sp)
    80002f90:	01313423          	sd	s3,8(sp)
    80002f94:	03010413          	addi	s0,sp,48
    80002f98:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002f9c:	00050493          	mv	s1,a0
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	bec080e7          	jalr	-1044(ra) # 80002b8c <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002fa8:	00a48a63          	beq	s1,a0,80002fbc <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	c00080e7          	jalr	-1024(ra) # 80002bac <_Z16getNextBlockAddrm>
    80002fb4:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002fb8:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80002fbc:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002fc0:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	be4080e7          	jalr	-1052(ra) # 80002bac <_Z16getNextBlockAddrm>
    80002fd0:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002fd4:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002fd8:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002fdc:	00098513          	mv	a0,s3
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	bfc080e7          	jalr	-1028(ra) # 80002bdc <_Z12getDeg2Floorm>
    80002fe8:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002fec:	00000713          	li	a4,0
    80002ff0:	02e56063          	bltu	a0,a4,80003010 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002ff4:	00270793          	addi	a5,a4,2
    80002ff8:	00479793          	slli	a5,a5,0x4
    80002ffc:	00f907b3          	add	a5,s2,a5
    80003000:	0007b423          	sd	zero,8(a5)
    80003004:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003008:	00170713          	addi	a4,a4,1
    8000300c:	fe5ff06f          	j	80002ff0 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003010:	00000493          	li	s1,0
    80003014:	0334f463          	bgeu	s1,s3,8000303c <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80003018:	00893583          	ld	a1,8(s2)
    8000301c:	00c49793          	slli	a5,s1,0xc
    80003020:	00000613          	li	a2,0
    80003024:	00f585b3          	add	a1,a1,a5
    80003028:	00090513          	mv	a0,s2
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	e18080e7          	jalr	-488(ra) # 80002e44 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003034:	00148493          	addi	s1,s1,1
    80003038:	fddff06f          	j	80003014 <_Z10buddy_initPvm+0x98>
}
    8000303c:	00090513          	mv	a0,s2
    80003040:	02813083          	ld	ra,40(sp)
    80003044:	02013403          	ld	s0,32(sp)
    80003048:	01813483          	ld	s1,24(sp)
    8000304c:	01013903          	ld	s2,16(sp)
    80003050:	00813983          	ld	s3,8(sp)
    80003054:	03010113          	addi	sp,sp,48
    80003058:	00008067          	ret

000000008000305c <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00113c23          	sd	ra,24(sp)
    80003064:	00813823          	sd	s0,16(sp)
    80003068:	00913423          	sd	s1,8(sp)
    8000306c:	01213023          	sd	s2,0(sp)
    80003070:	02010413          	addi	s0,sp,32
    80003074:	00050493          	mv	s1,a0
    80003078:	00058913          	mv	s2,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    8000307c:	00060513          	mv	a0,a2
    80003080:	00000097          	auipc	ra,0x0
    80003084:	b90080e7          	jalr	-1136(ra) # 80002c10 <_Z11getDeg2Ceilm>
    80003088:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    8000308c:	00090593          	mv	a1,s2
    80003090:	00048513          	mv	a0,s1
    80003094:	00000097          	auipc	ra,0x0
    80003098:	db0080e7          	jalr	-592(ra) # 80002e44 <_Z9addBlocksP14buddyAllocatorPvm>
}
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00813483          	ld	s1,8(sp)
    800030a8:	00013903          	ld	s2,0(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret

00000000800030b4 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    //KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    //KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    //KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    //TODO take care of numOfFreeBlocks
    //KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    for(int i = buddy->maxLevel;i>=0;i--)
    800030c0:	01852703          	lw	a4,24(a0)
    800030c4:	0080006f          	j	800030cc <_Z14printBuddyInfoP14buddyAllocator+0x18>
    800030c8:	fff7071b          	addiw	a4,a4,-1
    800030cc:	02074063          	bltz	a4,800030ec <_Z14printBuddyInfoP14buddyAllocator+0x38>
    {
        //KConsole::trapPrintStringInt("Level ",i);
        //KConsole::trapPrintString("Free blocks on this level\n");
        buddyBlock* curr = buddy->bucket[i].first;
    800030d0:	00270793          	addi	a5,a4,2
    800030d4:	00479793          	slli	a5,a5,0x4
    800030d8:	00f507b3          	add	a5,a0,a5
    800030dc:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    800030e0:	fe0784e3          	beqz	a5,800030c8 <_Z14printBuddyInfoP14buddyAllocator+0x14>
        {
            //KConsole::trapPrintInt((size_t)curr, 16);
            //KConsole::trapPrintString("\n");
            curr = curr->next;
    800030e4:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    800030e8:	ff9ff06f          	j	800030e0 <_Z14printBuddyInfoP14buddyAllocator+0x2c>
        }
    }
    //KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800030f8:	fe010113          	addi	sp,sp,-32
    800030fc:	00113c23          	sd	ra,24(sp)
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	01213023          	sd	s2,0(sp)
    8000310c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003110:	01800513          	li	a0,24
    80003114:	00002097          	auipc	ra,0x2
    80003118:	f00080e7          	jalr	-256(ra) # 80005014 <_ZN10KSemaphorenwEm>
    8000311c:	00050493          	mv	s1,a0
    80003120:	00000593          	li	a1,0
    80003124:	00002097          	auipc	ra,0x2
    80003128:	c8c080e7          	jalr	-884(ra) # 80004db0 <_ZN10KSemaphoreC1Ei>
    8000312c:	00009797          	auipc	a5,0x9
    80003130:	8e97b223          	sd	s1,-1820(a5) # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003134:	01800513          	li	a0,24
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	edc080e7          	jalr	-292(ra) # 80005014 <_ZN10KSemaphorenwEm>
    80003140:	00050493          	mv	s1,a0
    80003144:	00000593          	li	a1,0
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	c68080e7          	jalr	-920(ra) # 80004db0 <_ZN10KSemaphoreC1Ei>
    80003150:	00009797          	auipc	a5,0x9
    80003154:	8c97b423          	sd	s1,-1848(a5) # 8000ba18 <_ZN8KConsole19hasCharactersOutputE>
}
    80003158:	01813083          	ld	ra,24(sp)
    8000315c:	01013403          	ld	s0,16(sp)
    80003160:	00813483          	ld	s1,8(sp)
    80003164:	00013903          	ld	s2,0(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret
    80003170:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003174:	00048513          	mv	a0,s1
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	f48080e7          	jalr	-184(ra) # 800050c0 <_ZN10KSemaphoredlEPv>
    80003180:	00090513          	mv	a0,s2
    80003184:	0000e097          	auipc	ra,0xe
    80003188:	a04080e7          	jalr	-1532(ra) # 80010b88 <_Unwind_Resume>
    8000318c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003190:	00048513          	mv	a0,s1
    80003194:	00002097          	auipc	ra,0x2
    80003198:	f2c080e7          	jalr	-212(ra) # 800050c0 <_ZN10KSemaphoredlEPv>
    8000319c:	00090513          	mv	a0,s2
    800031a0:	0000e097          	auipc	ra,0xe
    800031a4:	9e8080e7          	jalr	-1560(ra) # 80010b88 <_Unwind_Resume>

00000000800031a8 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800031a8:	00009697          	auipc	a3,0x9
    800031ac:	86868693          	addi	a3,a3,-1944 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    800031b0:	0106b603          	ld	a2,16(a3)
    800031b4:	00160793          	addi	a5,a2,1
    800031b8:	00002737          	lui	a4,0x2
    800031bc:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800031c0:	00e7f7b3          	and	a5,a5,a4
    800031c4:	0186b703          	ld	a4,24(a3)
    800031c8:	04e78263          	beq	a5,a4,8000320c <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800031cc:	ff010113          	addi	sp,sp,-16
    800031d0:	00113423          	sd	ra,8(sp)
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800031dc:	0000b717          	auipc	a4,0xb
    800031e0:	87470713          	addi	a4,a4,-1932 # 8000da50 <_ZN8KConsole11inputBufferE>
    800031e4:	00c70633          	add	a2,a4,a2
    800031e8:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800031ec:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800031f0:	0006b503          	ld	a0,0(a3)
    800031f4:	00002097          	auipc	ra,0x2
    800031f8:	dd8080e7          	jalr	-552(ra) # 80004fcc <_ZN10KSemaphore6signalEv>
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret
    8000320c:	00008067          	ret

0000000080003210 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003210:	00008797          	auipc	a5,0x8
    80003214:	6f87b783          	ld	a5,1784(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003218:	0007b783          	ld	a5,0(a5)
    8000321c:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003220:	0017f793          	andi	a5,a5,1
    80003224:	02078063          	beqz	a5,80003244 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003228:	00008797          	auipc	a5,0x8
    8000322c:	7087b783          	ld	a5,1800(a5) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003230:	0007b783          	ld	a5,0(a5)
    80003234:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003238:	00008797          	auipc	a5,0x8
    8000323c:	7f87b783          	ld	a5,2040(a5) # 8000ba30 <_ZN8KConsole11pendingGetcE>
    80003240:	00079463          	bnez	a5,80003248 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003244:	00008067          	ret
{
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	00813023          	sd	s0,0(sp)
    80003254:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003258:	fff78793          	addi	a5,a5,-1
    8000325c:	00008717          	auipc	a4,0x8
    80003260:	7cf73a23          	sd	a5,2004(a4) # 8000ba30 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003264:	00000097          	auipc	ra,0x0
    80003268:	f44080e7          	jalr	-188(ra) # 800031a8 <_ZN8KConsole17putCharacterInputEc>
}
    8000326c:	00813083          	ld	ra,8(sp)
    80003270:	00013403          	ld	s0,0(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003290:	00008497          	auipc	s1,0x8
    80003294:	78048493          	addi	s1,s1,1920 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    80003298:	0004b503          	ld	a0,0(s1)
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	bb8080e7          	jalr	-1096(ra) # 80004e54 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800032a4:	0184b783          	ld	a5,24(s1)
    800032a8:	0104b703          	ld	a4,16(s1)
    800032ac:	04e78063          	beq	a5,a4,800032ec <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800032b0:	0000a717          	auipc	a4,0xa
    800032b4:	7a070713          	addi	a4,a4,1952 # 8000da50 <_ZN8KConsole11inputBufferE>
    800032b8:	00f70733          	add	a4,a4,a5
    800032bc:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800032c0:	00178793          	addi	a5,a5,1
    800032c4:	00002737          	lui	a4,0x2
    800032c8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800032cc:	00e7f7b3          	and	a5,a5,a4
    800032d0:	00008717          	auipc	a4,0x8
    800032d4:	74f73c23          	sd	a5,1880(a4) # 8000ba28 <_ZN8KConsole9inputHeadE>
    return c;
}
    800032d8:	01813083          	ld	ra,24(sp)
    800032dc:	01013403          	ld	s0,16(sp)
    800032e0:	00813483          	ld	s1,8(sp)
    800032e4:	02010113          	addi	sp,sp,32
    800032e8:	00008067          	ret
        return -1;
    800032ec:	0ff00513          	li	a0,255
    800032f0:	fe9ff06f          	j	800032d8 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800032f4 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800032f4:	00008697          	auipc	a3,0x8
    800032f8:	71c68693          	addi	a3,a3,1820 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    800032fc:	0286b603          	ld	a2,40(a3)
    80003300:	00160793          	addi	a5,a2,1
    80003304:	00002737          	lui	a4,0x2
    80003308:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    8000330c:	00e7f7b3          	and	a5,a5,a4
    80003310:	0306b703          	ld	a4,48(a3)
    80003314:	04e78a63          	beq	a5,a4,80003368 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003328:	00068713          	mv	a4,a3
    8000332c:	0386b683          	ld	a3,56(a3)
    80003330:	00168693          	addi	a3,a3,1
    80003334:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003338:	00008697          	auipc	a3,0x8
    8000333c:	71868693          	addi	a3,a3,1816 # 8000ba50 <_ZN8KConsole12outputBufferE>
    80003340:	00c68633          	add	a2,a3,a2
    80003344:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003348:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    8000334c:	00873503          	ld	a0,8(a4)
    80003350:	00002097          	auipc	ra,0x2
    80003354:	c7c080e7          	jalr	-900(ra) # 80004fcc <_ZN10KSemaphore6signalEv>
}
    80003358:	00813083          	ld	ra,8(sp)
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret
    80003368:	00008067          	ret

000000008000336c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003380:	00008497          	auipc	s1,0x8
    80003384:	69048493          	addi	s1,s1,1680 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    80003388:	0084b503          	ld	a0,8(s1)
    8000338c:	00002097          	auipc	ra,0x2
    80003390:	ac8080e7          	jalr	-1336(ra) # 80004e54 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003394:	0304b783          	ld	a5,48(s1)
    80003398:	0284b703          	ld	a4,40(s1)
    8000339c:	04e78063          	beq	a5,a4,800033dc <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800033a0:	00008717          	auipc	a4,0x8
    800033a4:	6b070713          	addi	a4,a4,1712 # 8000ba50 <_ZN8KConsole12outputBufferE>
    800033a8:	00f70733          	add	a4,a4,a5
    800033ac:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800033b0:	00178793          	addi	a5,a5,1
    800033b4:	00002737          	lui	a4,0x2
    800033b8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033bc:	00e7f7b3          	and	a5,a5,a4
    800033c0:	00008717          	auipc	a4,0x8
    800033c4:	68f73023          	sd	a5,1664(a4) # 8000ba40 <_ZN8KConsole10outputHeadE>
    return c;
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret
        return -1;
    800033dc:	0ff00513          	li	a0,255
    800033e0:	fe9ff06f          	j	800033c8 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800033e4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800033e4:	ff010113          	addi	sp,sp,-16
    800033e8:	00113423          	sd	ra,8(sp)
    800033ec:	00813023          	sd	s0,0(sp)
    800033f0:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800033f4:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800033f8:	0ff57513          	andi	a0,a0,255
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	ef8080e7          	jalr	-264(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
}
    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	01010113          	addi	sp,sp,16
    80003410:	00008067          	ret

0000000080003414 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00113c23          	sd	ra,24(sp)
    8000341c:	00813823          	sd	s0,16(sp)
    80003420:	00913423          	sd	s1,8(sp)
    80003424:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003428:	00008717          	auipc	a4,0x8
    8000342c:	5e870713          	addi	a4,a4,1512 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    80003430:	02073783          	ld	a5,32(a4)
    80003434:	00178793          	addi	a5,a5,1
    80003438:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	e40080e7          	jalr	-448(ra) # 8000327c <_ZN8KConsole17getCharacterInputEv>
    80003444:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003448:	01b00793          	li	a5,27
    8000344c:	02f51663          	bne	a0,a5,80003478 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003450:	00d00793          	li	a5,13
    80003454:	02f48863          	beq	s1,a5,80003484 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003458:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	000080e7          	jalr	ra # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80003464:	01813083          	ld	ra,24(sp)
    80003468:	01013403          	ld	s0,16(sp)
    8000346c:	00813483          	ld	s1,8(sp)
    80003470:	02010113          	addi	sp,sp,32
    80003474:	00008067          	ret
        putCharacterOutput(ch);
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	e7c080e7          	jalr	-388(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
    80003480:	fd1ff06f          	j	80003450 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003484:	00d00513          	li	a0,13
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	e6c080e7          	jalr	-404(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003490:	00a00513          	li	a0,10
    80003494:	00000097          	auipc	ra,0x0
    80003498:	e60080e7          	jalr	-416(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
    8000349c:	fbdff06f          	j	80003458 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800034a0 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813423          	sd	s0,8(sp)
    800034a8:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800034ac:	00008517          	auipc	a0,0x8
    800034b0:	59c53503          	ld	a0,1436(a0) # 8000ba48 <_ZN8KConsole11pendingPutcE>
    800034b4:	00153513          	seqz	a0,a0
    800034b8:	00813403          	ld	s0,8(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800034c4:	fe010113          	addi	sp,sp,-32
    800034c8:	00113c23          	sd	ra,24(sp)
    800034cc:	00813823          	sd	s0,16(sp)
    800034d0:	02010413          	addi	s0,sp,32
    800034d4:	0180006f          	j	800034ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	e58080e7          	jalr	-424(ra) # 80002330 <_Z11thread_exitv>
    800034e0:	0340006f          	j	80003514 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	e2c080e7          	jalr	-468(ra) # 80002310 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800034ec:	00008797          	auipc	a5,0x8
    800034f0:	47c7b783          	ld	a5,1148(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x70>
    800034f4:	0007c783          	lbu	a5,0(a5)
    800034f8:	00078e63          	beqz	a5,80003514 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800034fc:	00000097          	auipc	ra,0x0
    80003500:	fa4080e7          	jalr	-92(ra) # 800034a0 <_ZN8KConsole17outputBufferEmptyEv>
    80003504:	00050863          	beqz	a0,80003514 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003508:	00008797          	auipc	a5,0x8
    8000350c:	5287b783          	ld	a5,1320(a5) # 8000ba30 <_ZN8KConsole11pendingGetcE>
    80003510:	fc0784e3          	beqz	a5,800034d8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003514:	00008797          	auipc	a5,0x8
    80003518:	3f47b783          	ld	a5,1012(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000351c:	0007b783          	ld	a5,0(a5)
    80003520:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003524:	0207f793          	andi	a5,a5,32
    80003528:	fa078ee3          	beqz	a5,800034e4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000352c:	00008797          	auipc	a5,0x8
    80003530:	51c7b783          	ld	a5,1308(a5) # 8000ba48 <_ZN8KConsole11pendingPutcE>
    80003534:	fa0788e3          	beqz	a5,800034e4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	000080e7          	jalr	ra # 80002538 <_Z20sysCallGetCharOutputv>
    80003540:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003544:	00008717          	auipc	a4,0x8
    80003548:	4cc70713          	addi	a4,a4,1228 # 8000ba10 <_ZN8KConsole18hasCharactersInputE>
    8000354c:	03873783          	ld	a5,56(a4)
    80003550:	fff78793          	addi	a5,a5,-1
    80003554:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003558:	00008797          	auipc	a5,0x8
    8000355c:	3a87b783          	ld	a5,936(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003560:	0007b783          	ld	a5,0(a5)
    80003564:	fef44703          	lbu	a4,-17(s0)
    80003568:	00e78023          	sb	a4,0(a5)
    8000356c:	f81ff06f          	j	800034ec <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003570 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003570:	ff010113          	addi	sp,sp,-16
    80003574:	00113423          	sd	ra,8(sp)
    80003578:	00813023          	sd	s0,0(sp)
    8000357c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003580:	00000097          	auipc	ra,0x0
    80003584:	dec080e7          	jalr	-532(ra) # 8000336c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003588:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000358c:	00001097          	auipc	ra,0x1
    80003590:	ed0080e7          	jalr	-304(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80003594:	00813083          	ld	ra,8(sp)
    80003598:	00013403          	ld	s0,0(sp)
    8000359c:	01010113          	addi	sp,sp,16
    800035a0:	00008067          	ret

00000000800035a4 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800035a4:	fe010113          	addi	sp,sp,-32
    800035a8:	00113c23          	sd	ra,24(sp)
    800035ac:	00813823          	sd	s0,16(sp)
    800035b0:	00913423          	sd	s1,8(sp)
    800035b4:	02010413          	addi	s0,sp,32
    800035b8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800035bc:	0004c503          	lbu	a0,0(s1)
    800035c0:	00050a63          	beqz	a0,800035d4 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	d30080e7          	jalr	-720(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800035cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800035d0:	fedff06f          	j	800035bc <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	02010113          	addi	sp,sp,32
    800035e4:	00008067          	ret

00000000800035e8 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800035e8:	fb010113          	addi	sp,sp,-80
    800035ec:	04113423          	sd	ra,72(sp)
    800035f0:	04813023          	sd	s0,64(sp)
    800035f4:	02913c23          	sd	s1,56(sp)
    800035f8:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800035fc:	00006797          	auipc	a5,0x6
    80003600:	c5c78793          	addi	a5,a5,-932 # 80009258 <CONSOLE_STATUS+0x248>
    80003604:	0007b703          	ld	a4,0(a5)
    80003608:	fce43423          	sd	a4,-56(s0)
    8000360c:	0087b703          	ld	a4,8(a5)
    80003610:	fce43823          	sd	a4,-48(s0)
    80003614:	0107c783          	lbu	a5,16(a5)
    80003618:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    8000361c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003620:	02b57733          	remu	a4,a0,a1
    80003624:	fe040693          	addi	a3,s0,-32
    80003628:	00e68733          	add	a4,a3,a4
    8000362c:	fe874703          	lbu	a4,-24(a4)
    80003630:	009687b3          	add	a5,a3,s1
    80003634:	0014849b          	addiw	s1,s1,1
    80003638:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    8000363c:	00050793          	mv	a5,a0
    80003640:	02b55533          	divu	a0,a0,a1
    80003644:	fcb7fee3          	bgeu	a5,a1,80003620 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003648:	fff4849b          	addiw	s1,s1,-1
    8000364c:	0004ce63          	bltz	s1,80003668 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003650:	fe040793          	addi	a5,s0,-32
    80003654:	009787b3          	add	a5,a5,s1
    80003658:	fd87c503          	lbu	a0,-40(a5)
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	c98080e7          	jalr	-872(ra) # 800032f4 <_ZN8KConsole18putCharacterOutputEc>
    80003664:	fe5ff06f          	j	80003648 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003668:	04813083          	ld	ra,72(sp)
    8000366c:	04013403          	ld	s0,64(sp)
    80003670:	03813483          	ld	s1,56(sp)
    80003674:	05010113          	addi	sp,sp,80
    80003678:	00008067          	ret

000000008000367c <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	01213023          	sd	s2,0(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	00058493          	mv	s1,a1
    80003698:	00060913          	mv	s2,a2
    trapPrintString(string);
    8000369c:	00000097          	auipc	ra,0x0
    800036a0:	f08080e7          	jalr	-248(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    800036a4:	00000613          	li	a2,0
    800036a8:	00090593          	mv	a1,s2
    800036ac:	00048513          	mv	a0,s1
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	f38080e7          	jalr	-200(ra) # 800035e8 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800036b8:	00006517          	auipc	a0,0x6
    800036bc:	f5050513          	addi	a0,a0,-176 # 80009608 <CONSOLE_STATUS+0x5f8>
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	ee4080e7          	jalr	-284(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
}
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	00013903          	ld	s2,0(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret

00000000800036e0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00813423          	sd	s0,8(sp)
    800036e8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800036ec:	00008797          	auipc	a5,0x8
    800036f0:	2847b783          	ld	a5,644(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    800036f4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800036f8:	00500793          	li	a5,5
    800036fc:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003700:	0000c797          	auipc	a5,0xc
    80003704:	3507b783          	ld	a5,848(a5) # 8000fa50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003708:	00000593          	li	a1,0
    while(curr != 0)
    8000370c:	02078063          	beqz	a5,8000372c <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003710:	02063683          	ld	a3,32(a2)
    80003714:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003718:	00e6e863          	bltu	a3,a4,80003728 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    8000371c:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003720:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003724:	fe9ff06f          	j	8000370c <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003728:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    8000372c:	00058a63          	beqz	a1,80003740 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003730:	00c5b423          	sd	a2,8(a1)
}
    80003734:	00813403          	ld	s0,8(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003740:	0000c797          	auipc	a5,0xc
    80003744:	30c7b823          	sd	a2,784(a5) # 8000fa50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003748:	fedff06f          	j	80003734 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000374c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000374c:	0000c517          	auipc	a0,0xc
    80003750:	30453503          	ld	a0,772(a0) # 8000fa50 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003754:	06050e63          	beqz	a0,800037d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003758:	06050c63          	beqz	a0,800037d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000375c:	02053783          	ld	a5,32(a0)
    80003760:	00008717          	auipc	a4,0x8
    80003764:	1e873703          	ld	a4,488(a4) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003768:	00073703          	ld	a4,0(a4)
    8000376c:	06f76263          	bltu	a4,a5,800037d0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	00813823          	sd	s0,16(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	0180006f          	j	8000379c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003788:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000378c:	00008717          	auipc	a4,0x8
    80003790:	1bc73703          	ld	a4,444(a4) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003794:	00073703          	ld	a4,0(a4)
    80003798:	02f76263          	bltu	a4,a5,800037bc <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000379c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800037a0:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	0b8080e7          	jalr	184(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800037ac:	0000c797          	auipc	a5,0xc
    800037b0:	2a97b223          	sd	s1,676(a5) # 8000fa50 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800037b4:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800037b8:	fc0498e3          	bnez	s1,80003788 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800037bc:	01813083          	ld	ra,24(sp)
    800037c0:	01013403          	ld	s0,16(sp)
    800037c4:	00813483          	ld	s1,8(sp)
    800037c8:	02010113          	addi	sp,sp,32
    800037cc:	00008067          	ret
    800037d0:	00008067          	ret

00000000800037d4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800037d4:	ff010113          	addi	sp,sp,-16
    800037d8:	00113423          	sd	ra,8(sp)
    800037dc:	00813023          	sd	s0,0(sp)
    800037e0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800037e4:	00001097          	auipc	ra,0x1
    800037e8:	37c080e7          	jalr	892(ra) # 80004b60 <_ZN15MemoryAllocator7kmallocEm>
}
    800037ec:	00813083          	ld	ra,8(sp)
    800037f0:	00013403          	ld	s0,0(sp)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret

00000000800037fc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000380c:	00001097          	auipc	ra,0x1
    80003810:	3b8080e7          	jalr	952(ra) # 80004bc4 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003814:	00813083          	ld	ra,8(sp)
    80003818:	00013403          	ld	s0,0(sp)
    8000381c:	01010113          	addi	sp,sp,16
    80003820:	00008067          	ret

0000000080003824 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00813423          	sd	s0,8(sp)
    8000382c:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003830:	0000c797          	auipc	a5,0xc
    80003834:	2287b783          	ld	a5,552(a5) # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003838:	00000513          	li	a0,0
    while(curr != 0)
    8000383c:	00078863          	beqz	a5,8000384c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003840:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003844:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003848:	ff5ff06f          	j	8000383c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000384c:	0005051b          	sext.w	a0,a0
    80003850:	00813403          	ld	s0,8(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret

000000008000385c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00813423          	sd	s0,8(sp)
    80003864:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003868:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000386c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003870:	0000c797          	auipc	a5,0xc
    80003874:	1e87b783          	ld	a5,488(a5) # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    80003878:	02078263          	beqz	a5,8000389c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000387c:	0000c797          	auipc	a5,0xc
    80003880:	1dc78793          	addi	a5,a5,476 # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    80003884:	0087b703          	ld	a4,8(a5)
    80003888:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000388c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003890:	00813403          	ld	s0,8(sp)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000389c:	0000c797          	auipc	a5,0xc
    800038a0:	1bc78793          	addi	a5,a5,444 # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    800038a4:	00a7b423          	sd	a0,8(a5)
    800038a8:	00a7b023          	sd	a0,0(a5)
    800038ac:	fe5ff06f          	j	80003890 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800038b0 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00813423          	sd	s0,8(sp)
    800038b8:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800038bc:	0000c517          	auipc	a0,0xc
    800038c0:	19c53503          	ld	a0,412(a0) # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    800038c4:	00050c63          	beqz	a0,800038dc <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800038c8:	00853783          	ld	a5,8(a0)
    800038cc:	00078e63          	beqz	a5,800038e8 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800038d0:	0000c717          	auipc	a4,0xc
    800038d4:	18f73423          	sd	a5,392(a4) # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800038d8:	00053423          	sd	zero,8(a0)
    return retval;
}
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800038e8:	0000c797          	auipc	a5,0xc
    800038ec:	17078793          	addi	a5,a5,368 # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    800038f0:	0007b423          	sd	zero,8(a5)
    800038f4:	0007b023          	sd	zero,0(a5)
    800038f8:	fe1ff06f          	j	800038d8 <_ZN9Scheduler3getEv+0x28>

00000000800038fc <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00113c23          	sd	ra,24(sp)
    80003904:	00813823          	sd	s0,16(sp)
    80003908:	00913423          	sd	s1,8(sp)
    8000390c:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003910:	0000c497          	auipc	s1,0xc
    80003914:	1484b483          	ld	s1,328(s1) # 8000fa58 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003918:	02048863          	beqz	s1,80003948 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    8000391c:	00000613          	li	a2,0
    80003920:	01000593          	li	a1,16
    80003924:	00048513          	mv	a0,s1
    80003928:	00000097          	auipc	ra,0x0
    8000392c:	cc0080e7          	jalr	-832(ra) # 800035e8 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003930:	00006517          	auipc	a0,0x6
    80003934:	cd850513          	addi	a0,a0,-808 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003938:	00000097          	auipc	ra,0x0
    8000393c:	c6c080e7          	jalr	-916(ra) # 800035a4 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003940:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003944:	fd5ff06f          	j	80003918 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00113423          	sd	ra,8(sp)
    80003964:	00813023          	sd	s0,0(sp)
    80003968:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000396c:	00001097          	auipc	ra,0x1
    80003970:	a30080e7          	jalr	-1488(ra) # 8000439c <_ZN5Riscv10kernelMainEv>
    80003974:	00813083          	ld	ra,8(sp)
    80003978:	00013403          	ld	s0,0(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003994:	01200593          	li	a1,18
    80003998:	00008797          	auipc	a5,0x8
    8000399c:	f787b783          	ld	a5,-136(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039a0:	0007b503          	ld	a0,0(a5)
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	5d8080e7          	jalr	1496(ra) # 80002f7c <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    800039ac:	fffff097          	auipc	ra,0xfffff
    800039b0:	708080e7          	jalr	1800(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
}
    800039b4:	00813083          	ld	ra,8(sp)
    800039b8:	00013403          	ld	s0,0(sp)
    800039bc:	01010113          	addi	sp,sp,16
    800039c0:	00008067          	ret

00000000800039c4 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    800039c4:	fe010113          	addi	sp,sp,-32
    800039c8:	00113c23          	sd	ra,24(sp)
    800039cc:	00813823          	sd	s0,16(sp)
    800039d0:	00913423          	sd	s1,8(sp)
    800039d4:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800039d8:	00a00593          	li	a1,10
    800039dc:	00008797          	auipc	a5,0x8
    800039e0:	f347b783          	ld	a5,-204(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039e4:	0007b503          	ld	a0,0(a5)
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	594080e7          	jalr	1428(ra) # 80002f7c <_Z10buddy_initPvm>
    800039f0:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	6c0080e7          	jalr	1728(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800039fc:	00100593          	li	a1,1
    80003a00:	00048513          	mv	a0,s1
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	388080e7          	jalr	904(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003a0c:	00048513          	mv	a0,s1
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	6a4080e7          	jalr	1700(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003a18:	00100593          	li	a1,1
    80003a1c:	00048513          	mv	a0,s1
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	36c080e7          	jalr	876(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	688080e7          	jalr	1672(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003a34:	00100593          	li	a1,1
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	350080e7          	jalr	848(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003a44:	00048513          	mv	a0,s1
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	66c080e7          	jalr	1644(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003a50:	00300593          	li	a1,3
    80003a54:	00048513          	mv	a0,s1
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	334080e7          	jalr	820(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003a60:	00048513          	mv	a0,s1
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	650080e7          	jalr	1616(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret

0000000080003a80 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003a80:	fe010113          	addi	sp,sp,-32
    80003a84:	00113c23          	sd	ra,24(sp)
    80003a88:	00813823          	sd	s0,16(sp)
    80003a8c:	00913423          	sd	s1,8(sp)
    80003a90:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003a94:	00a00593          	li	a1,10
    80003a98:	00008797          	auipc	a5,0x8
    80003a9c:	e787b783          	ld	a5,-392(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003aa0:	0007b503          	ld	a0,0(a5)
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	4d8080e7          	jalr	1240(ra) # 80002f7c <_Z10buddy_initPvm>
    80003aac:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003ab0:	06400593          	li	a1,100
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	2d8080e7          	jalr	728(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003abc:	00050c63          	beqz	a0,80003ad4 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	02010113          	addi	sp,sp,32
    80003ad0:	00008067          	ret
        printBuddyInfo(buddy);
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	5dc080e7          	jalr	1500(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003ae0:	fe1ff06f          	j	80003ac0 <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003ae4 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003ae4:	fd010113          	addi	sp,sp,-48
    80003ae8:	02113423          	sd	ra,40(sp)
    80003aec:	02813023          	sd	s0,32(sp)
    80003af0:	00913c23          	sd	s1,24(sp)
    80003af4:	01213823          	sd	s2,16(sp)
    80003af8:	01313423          	sd	s3,8(sp)
    80003afc:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003b00:	00a00593          	li	a1,10
    80003b04:	00008797          	auipc	a5,0x8
    80003b08:	e0c7b783          	ld	a5,-500(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b0c:	0007b503          	ld	a0,0(a5)
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	46c080e7          	jalr	1132(ra) # 80002f7c <_Z10buddy_initPvm>
    80003b18:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	598080e7          	jalr	1432(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003b24:	00100593          	li	a1,1
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	260080e7          	jalr	608(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    80003b34:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	578080e7          	jalr	1400(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003b44:	00100613          	li	a2,1
    80003b48:	00090593          	mv	a1,s2
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	50c080e7          	jalr	1292(ra) # 8000305c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003b58:	00048513          	mv	a0,s1
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	558080e7          	jalr	1368(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003b64:	00200593          	li	a1,2
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	fffff097          	auipc	ra,0xfffff
    80003b70:	220080e7          	jalr	544(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    80003b74:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003b78:	00300593          	li	a1,3
    80003b7c:	00048513          	mv	a0,s1
    80003b80:	fffff097          	auipc	ra,0xfffff
    80003b84:	20c080e7          	jalr	524(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    80003b88:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003b8c:	00048513          	mv	a0,s1
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	524080e7          	jalr	1316(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003b98:	00200613          	li	a2,2
    80003b9c:	00090593          	mv	a1,s2
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	4b8080e7          	jalr	1208(ra) # 8000305c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003bac:	00048513          	mv	a0,s1
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	504080e7          	jalr	1284(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003bb8:	00100593          	li	a1,1
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	1cc080e7          	jalr	460(ra) # 80002d8c <_Z11buddy_allocP14buddyAllocatorm>
    80003bc8:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	4e4080e7          	jalr	1252(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003bd8:	00300613          	li	a2,3
    80003bdc:	00098593          	mv	a1,s3
    80003be0:	00048513          	mv	a0,s1
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	478080e7          	jalr	1144(ra) # 8000305c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	4c4080e7          	jalr	1220(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003bf8:	00100613          	li	a2,1
    80003bfc:	00090593          	mv	a1,s2
    80003c00:	00048513          	mv	a0,s1
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	458080e7          	jalr	1112(ra) # 8000305c <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	4a4080e7          	jalr	1188(ra) # 800030b4 <_Z14printBuddyInfoP14buddyAllocator>
    80003c18:	02813083          	ld	ra,40(sp)
    80003c1c:	02013403          	ld	s0,32(sp)
    80003c20:	01813483          	ld	s1,24(sp)
    80003c24:	01013903          	ld	s2,16(sp)
    80003c28:	00813983          	ld	s3,8(sp)
    80003c2c:	03010113          	addi	sp,sp,48
    80003c30:	00008067          	ret

0000000080003c34 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	00813023          	sd	s0,0(sp)
    80003c40:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003c44:	00053783          	ld	a5,0(a0)
    80003c48:	0107b783          	ld	a5,16(a5)
    80003c4c:	000780e7          	jalr	a5
}
    80003c50:	00813083          	ld	ra,8(sp)
    80003c54:	00013403          	ld	s0,0(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret

0000000080003c60 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003c60:	00008797          	auipc	a5,0x8
    80003c64:	c4878793          	addi	a5,a5,-952 # 8000b8a8 <_ZTV6Thread+0x10>
    80003c68:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003c6c:	00853503          	ld	a0,8(a0)
    80003c70:	02050663          	beqz	a0,80003c9c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003c74:	ff010113          	addi	sp,sp,-16
    80003c78:	00113423          	sd	ra,8(sp)
    80003c7c:	00813023          	sd	s0,0(sp)
    80003c80:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	908080e7          	jalr	-1784(ra) # 8000258c <_ZN7_threaddlEPv>
}
    80003c8c:	00813083          	ld	ra,8(sp)
    80003c90:	00013403          	ld	s0,0(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003ca0:	00008797          	auipc	a5,0x8
    80003ca4:	c3078793          	addi	a5,a5,-976 # 8000b8d0 <_ZTV9Semaphore+0x10>
    80003ca8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003cac:	00853503          	ld	a0,8(a0)
    80003cb0:	02050663          	beqz	a0,80003cdc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003cb4:	ff010113          	addi	sp,sp,-16
    80003cb8:	00113423          	sd	ra,8(sp)
    80003cbc:	00813023          	sd	s0,0(sp)
    80003cc0:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	464080e7          	jalr	1124(ra) # 80004128 <_ZN4_semdlEPv>
}
    80003ccc:	00813083          	ld	ra,8(sp)
    80003cd0:	00013403          	ld	s0,0(sp)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret
    80003cdc:	00008067          	ret

0000000080003ce0 <_Znwm>:
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	544080e7          	jalr	1348(ra) # 80002234 <_Z9mem_allocm>
}
    80003cf8:	00813083          	ld	ra,8(sp)
    80003cfc:	00013403          	ld	s0,0(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret

0000000080003d08 <_ZdlPv>:
{
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00113423          	sd	ra,8(sp)
    80003d10:	00813023          	sd	s0,0(sp)
    80003d14:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	54c080e7          	jalr	1356(ra) # 80002264 <_Z8mem_freePv>
}
    80003d20:	00813083          	ld	ra,8(sp)
    80003d24:	00013403          	ld	s0,0(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret

0000000080003d30 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	00813823          	sd	s0,16(sp)
    80003d3c:	00913423          	sd	s1,8(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	00050493          	mv	s1,a0
}
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	f18080e7          	jalr	-232(ra) # 80003c60 <_ZN6ThreadD1Ev>
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00000097          	auipc	ra,0x0
    80003d58:	fb4080e7          	jalr	-76(ra) # 80003d08 <_ZdlPv>
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	00813823          	sd	s0,16(sp)
    80003d7c:	00913423          	sd	s1,8(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	00050493          	mv	s1,a0
}
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	f18080e7          	jalr	-232(ra) # 80003ca0 <_ZN9SemaphoreD1Ev>
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	f74080e7          	jalr	-140(ra) # 80003d08 <_ZdlPv>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret

0000000080003db0 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003db0:	00853503          	ld	a0,8(a0)
    80003db4:	02050663          	beqz	a0,80003de0 <_ZN6Thread5startEv+0x30>
{
    80003db8:	ff010113          	addi	sp,sp,-16
    80003dbc:	00113423          	sd	ra,8(sp)
    80003dc0:	00813023          	sd	s0,0(sp)
    80003dc4:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	678080e7          	jalr	1656(ra) # 80002440 <_Z12thread_startPv>
}
    80003dd0:	00813083          	ld	ra,8(sp)
    80003dd4:	00013403          	ld	s0,0(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret
        return -1;
    80003de0:	fff00513          	li	a0,-1
}
    80003de4:	00008067          	ret

0000000080003de8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003de8:	ff010113          	addi	sp,sp,-16
    80003dec:	00113423          	sd	ra,8(sp)
    80003df0:	00813023          	sd	s0,0(sp)
    80003df4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003df8:	ffffe097          	auipc	ra,0xffffe
    80003dfc:	518080e7          	jalr	1304(ra) # 80002310 <_Z15thread_dispatchv>
}
    80003e00:	00813083          	ld	ra,8(sp)
    80003e04:	00013403          	ld	s0,0(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <_ZN6Thread5sleepEm>:
{
    80003e10:	ff010113          	addi	sp,sp,-16
    80003e14:	00113423          	sd	ra,8(sp)
    80003e18:	00813023          	sd	s0,0(sp)
    80003e1c:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	5f4080e7          	jalr	1524(ra) # 80002414 <_Z10time_sleepm>
}
    80003e28:	00813083          	ld	ra,8(sp)
    80003e2c:	00013403          	ld	s0,0(sp)
    80003e30:	01010113          	addi	sp,sp,16
    80003e34:	00008067          	ret

0000000080003e38 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00113c23          	sd	ra,24(sp)
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	01213023          	sd	s2,0(sp)
    80003e4c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003e50:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003e54:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003e58:	0004b783          	ld	a5,0(s1)
    80003e5c:	0187b783          	ld	a5,24(a5)
    80003e60:	00048513          	mv	a0,s1
    80003e64:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003e68:	00090513          	mv	a0,s2
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	fa4080e7          	jalr	-92(ra) # 80003e10 <_ZN6Thread5sleepEm>
    while(true)
    80003e74:	fe5ff06f          	j	80003e58 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003e78 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00113423          	sd	ra,8(sp)
    80003e80:	00813023          	sd	s0,0(sp)
    80003e84:	01010413          	addi	s0,sp,16
    80003e88:	00008797          	auipc	a5,0x8
    80003e8c:	a2078793          	addi	a5,a5,-1504 # 8000b8a8 <_ZTV6Thread+0x10>
    80003e90:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003e94:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003e98:	00850513          	addi	a0,a0,8
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	5d0080e7          	jalr	1488(ra) # 8000246c <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003ea4:	00813083          	ld	ra,8(sp)
    80003ea8:	00013403          	ld	s0,0(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	00008797          	auipc	a5,0x8
    80003ec8:	9e478793          	addi	a5,a5,-1564 # 8000b8a8 <_ZTV6Thread+0x10>
    80003ecc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003ed0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003ed4:	00050613          	mv	a2,a0
    80003ed8:	00000597          	auipc	a1,0x0
    80003edc:	d5c58593          	addi	a1,a1,-676 # 80003c34 <_ZN6Thread6runnerEPv>
    80003ee0:	00850513          	addi	a0,a0,8
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	588080e7          	jalr	1416(ra) # 8000246c <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003eec:	00813083          	ld	ra,8(sp)
    80003ef0:	00013403          	ld	s0,0(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003efc:	00853503          	ld	a0,8(a0)
    80003f00:	02050663          	beqz	a0,80003f2c <_ZN9Semaphore4waitEv+0x30>
{
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00113423          	sd	ra,8(sp)
    80003f0c:	00813023          	sd	s0,0(sp)
    80003f10:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	4a8080e7          	jalr	1192(ra) # 800023bc <_Z8sem_waitP4_sem>
}
    80003f1c:	00813083          	ld	ra,8(sp)
    80003f20:	00013403          	ld	s0,0(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret
        return -1;
    80003f2c:	fff00513          	li	a0,-1
}
    80003f30:	00008067          	ret

0000000080003f34 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003f34:	fe010113          	addi	sp,sp,-32
    80003f38:	00113c23          	sd	ra,24(sp)
    80003f3c:	00813823          	sd	s0,16(sp)
    80003f40:	00913423          	sd	s1,8(sp)
    80003f44:	02010413          	addi	s0,sp,32
    80003f48:	00050493          	mv	s1,a0
    80003f4c:	00008797          	auipc	a5,0x8
    80003f50:	98478793          	addi	a5,a5,-1660 # 8000b8d0 <_ZTV9Semaphore+0x10>
    80003f54:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003f58:	00850513          	addi	a0,a0,8
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	3fc080e7          	jalr	1020(ra) # 80002358 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003f64:	00050463          	beqz	a0,80003f6c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003f68:	0004b423          	sd	zero,8(s1)
}
    80003f6c:	01813083          	ld	ra,24(sp)
    80003f70:	01013403          	ld	s0,16(sp)
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	02010113          	addi	sp,sp,32
    80003f7c:	00008067          	ret

0000000080003f80 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003f80:	00853503          	ld	a0,8(a0)
    80003f84:	02050663          	beqz	a0,80003fb0 <_ZN9Semaphore6signalEv+0x30>
{
    80003f88:	ff010113          	addi	sp,sp,-16
    80003f8c:	00113423          	sd	ra,8(sp)
    80003f90:	00813023          	sd	s0,0(sp)
    80003f94:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	450080e7          	jalr	1104(ra) # 800023e8 <_Z10sem_signalP4_sem>
}
    80003fa0:	00813083          	ld	ra,8(sp)
    80003fa4:	00013403          	ld	s0,0(sp)
    80003fa8:	01010113          	addi	sp,sp,16
    80003fac:	00008067          	ret
        return -1;
    80003fb0:	fff00513          	li	a0,-1
}
    80003fb4:	00008067          	ret

0000000080003fb8 <_ZN7Console4getcEv>:
{
    80003fb8:	ff010113          	addi	sp,sp,-16
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	00813023          	sd	s0,0(sp)
    80003fc4:	01010413          	addi	s0,sp,16
    return ::getc();
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	524080e7          	jalr	1316(ra) # 800024ec <_Z4getcv>
}
    80003fd0:	00813083          	ld	ra,8(sp)
    80003fd4:	00013403          	ld	s0,0(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN7Console4putcEc>:
{
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	524080e7          	jalr	1316(ra) # 80002514 <_Z4putcc>
}
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	01213023          	sd	s2,0(sp)
    8000401c:	02010413          	addi	s0,sp,32
    80004020:	00050493          	mv	s1,a0
    80004024:	00058913          	mv	s2,a1
    80004028:	01000513          	li	a0,16
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	cb4080e7          	jalr	-844(ra) # 80003ce0 <_Znwm>
    80004034:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80004038:	00953023          	sd	s1,0(a0)
    8000403c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004040:	00000597          	auipc	a1,0x0
    80004044:	df858593          	addi	a1,a1,-520 # 80003e38 <_ZN14PeriodicThread6runnerEPv>
    80004048:	00048513          	mv	a0,s1
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	e2c080e7          	jalr	-468(ra) # 80003e78 <_ZN6ThreadC1EPFvPvES0_>
    80004054:	00008797          	auipc	a5,0x8
    80004058:	82478793          	addi	a5,a5,-2012 # 8000b878 <_ZTV14PeriodicThread+0x10>
    8000405c:	00f4b023          	sd	a5,0(s1)
}
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	00813483          	ld	s1,8(sp)
    8000406c:	00013903          	ld	s2,0(sp)
    80004070:	02010113          	addi	sp,sp,32
    80004074:	00008067          	ret

0000000080004078 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004078:	ff010113          	addi	sp,sp,-16
    8000407c:	00813423          	sd	s0,8(sp)
    80004080:	01010413          	addi	s0,sp,16
    80004084:	00813403          	ld	s0,8(sp)
    80004088:	01010113          	addi	sp,sp,16
    8000408c:	00008067          	ret

0000000080004090 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00813423          	sd	s0,8(sp)
    80004098:	01010413          	addi	s0,sp,16
    8000409c:	00813403          	ld	s0,8(sp)
    800040a0:	01010113          	addi	sp,sp,16
    800040a4:	00008067          	ret

00000000800040a8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
    800040b8:	00007797          	auipc	a5,0x7
    800040bc:	7c078793          	addi	a5,a5,1984 # 8000b878 <_ZTV14PeriodicThread+0x10>
    800040c0:	00f53023          	sd	a5,0(a0)
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	b9c080e7          	jalr	-1124(ra) # 80003c60 <_ZN6ThreadD1Ev>
    800040cc:	00813083          	ld	ra,8(sp)
    800040d0:	00013403          	ld	s0,0(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN14PeriodicThreadD0Ev>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	78478793          	addi	a5,a5,1924 # 8000b878 <_ZTV14PeriodicThread+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	00000097          	auipc	ra,0x0
    80004104:	b60080e7          	jalr	-1184(ra) # 80003c60 <_ZN6ThreadD1Ev>
    80004108:	00048513          	mv	a0,s1
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	bfc080e7          	jalr	-1028(ra) # 80003d08 <_ZdlPv>
    80004114:	01813083          	ld	ra,24(sp)
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	00813483          	ld	s1,8(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	258080e7          	jalr	600(ra) # 80002390 <_Z9sem_closeP4_sem>
}
    80004140:	00813083          	ld	ra,8(sp)
    80004144:	00013403          	ld	s0,0(sp)
    80004148:	01010113          	addi	sp,sp,16
    8000414c:	00008067          	ret

0000000080004150 <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00113423          	sd	ra,8(sp)
    80004158:	00813023          	sd	s0,0(sp)
    8000415c:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004160:	00007797          	auipc	a5,0x7
    80004164:	7b07b783          	ld	a5,1968(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004168:	0007b503          	ld	a0,0(a5)
    8000416c:	00008797          	auipc	a5,0x8
    80004170:	80c7b783          	ld	a5,-2036(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004174:	0007b783          	ld	a5,0(a5)
    80004178:	40a787b3          	sub	a5,a5,a0
    8000417c:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004180:	00a00713          	li	a4,10
    80004184:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004188:	00001737          	lui	a4,0x1
    8000418c:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004190:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004194:	fffff737          	lui	a4,0xfffff
    80004198:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    8000419c:	00f50533          	add	a0,a0,a5
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	5d0080e7          	jalr	1488(ra) # 80004770 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    800041b8:	fe010113          	addi	sp,sp,-32
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00913423          	sd	s1,8(sp)
    800041c8:	01213023          	sd	s2,0(sp)
    800041cc:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    800041d0:	00007797          	auipc	a5,0x7
    800041d4:	7507b783          	ld	a5,1872(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800041d8:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    800041dc:	00007497          	auipc	s1,0x7
    800041e0:	7344b483          	ld	s1,1844(s1) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    800041e4:	0004b503          	ld	a0,0(s1)
    800041e8:	00007797          	auipc	a5,0x7
    800041ec:	7907b783          	ld	a5,1936(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    800041f0:	0007b783          	ld	a5,0(a5)
    800041f4:	40a787b3          	sub	a5,a5,a0
    800041f8:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    800041fc:	00a00713          	li	a4,10
    80004200:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004204:	00001737          	lui	a4,0x1
    80004208:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    8000420c:	00e787b3          	add	a5,a5,a4
    80004210:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80004214:	fffff737          	lui	a4,0xfffff
    80004218:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    8000421c:	00f50533          	add	a0,a0,a5
    80004220:	00000097          	auipc	ra,0x0
    80004224:	550080e7          	jalr	1360(ra) # 80004770 <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004228:	0009059b          	sext.w	a1,s2
    8000422c:	0004b503          	ld	a0,0(s1)
    80004230:	ffffd097          	auipc	ra,0xffffd
    80004234:	7cc080e7          	jalr	1996(ra) # 800019fc <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80004238:	00000693          	li	a3,0
    8000423c:	00000613          	li	a2,0
    80004240:	06000593          	li	a1,96
    80004244:	00005517          	auipc	a0,0x5
    80004248:	02c50513          	addi	a0,a0,44 # 80009270 <CONSOLE_STATUS+0x260>
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	914080e7          	jalr	-1772(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004254:	0000c497          	auipc	s1,0xc
    80004258:	81448493          	addi	s1,s1,-2028 # 8000fa68 <_ZN5Riscv8pcbCacheE>
    8000425c:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004260:	00000693          	li	a3,0
    80004264:	00000613          	li	a2,0
    80004268:	01800593          	li	a1,24
    8000426c:	00005517          	auipc	a0,0x5
    80004270:	01450513          	addi	a0,a0,20 # 80009280 <CONSOLE_STATUS+0x270>
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	8ec080e7          	jalr	-1812(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000427c:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	514080e7          	jalr	1300(ra) # 80002794 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	e70080e7          	jalr	-400(ra) # 800030f8 <_ZN8KConsole10initializeEv>

}
    80004290:	01813083          	ld	ra,24(sp)
    80004294:	01013403          	ld	s0,16(sp)
    80004298:	00813483          	ld	s1,8(sp)
    8000429c:	00013903          	ld	s2,0(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00813423          	sd	s0,8(sp)
    800042b0:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800042b4:	00200793          	li	a5,2
    800042b8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    800042bc:	00813403          	ld	s0,8(sp)
    800042c0:	01010113          	addi	sp,sp,16
    800042c4:	00008067          	ret

00000000800042c8 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    800042c8:	ff010113          	addi	sp,sp,-16
    800042cc:	00813423          	sd	s0,8(sp)
    800042d0:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800042d4:	00200793          	li	a5,2
    800042d8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    800042dc:	00813403          	ld	s0,8(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN5Riscv9endSystemEv>:
{
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00113423          	sd	ra,8(sp)
    800042f0:	00813023          	sd	s0,0(sp)
    800042f4:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	fd0080e7          	jalr	-48(ra) # 800042c8 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80004300:	00100793          	li	a5,1
    80004304:	0000b717          	auipc	a4,0xb
    80004308:	76f70a23          	sb	a5,1908(a4) # 8000fa78 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    8000430c:	fffff097          	auipc	ra,0xfffff
    80004310:	5a4080e7          	jalr	1444(ra) # 800038b0 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004314:	fe051ce3          	bnez	a0,8000430c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004318:	00007797          	auipc	a5,0x7
    8000431c:	6407b783          	ld	a5,1600(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004320:	0007b503          	ld	a0,0(a5)
    80004324:	fffff097          	auipc	ra,0xfffff
    80004328:	538080e7          	jalr	1336(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    8000432c:	00007797          	auipc	a5,0x7
    80004330:	5fc7b783          	ld	a5,1532(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004334:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	f70080e7          	jalr	-144(ra) # 800042a8 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80004340:	00007797          	auipc	a5,0x7
    80004344:	6187b783          	ld	a5,1560(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004348:	0007b503          	ld	a0,0(a5)
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	568080e7          	jalr	1384(ra) # 800028b4 <_ZN3PCB10isFinishedEv>
    80004354:	00051863          	bnez	a0,80004364 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	fb8080e7          	jalr	-72(ra) # 80002310 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004360:	fe1ff06f          	j	80004340 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004364:	00000097          	auipc	ra,0x0
    80004368:	f64080e7          	jalr	-156(ra) # 800042c8 <_ZN5Riscv17disableInterruptsEv>
}
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00008067          	ret

000000008000437c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00813423          	sd	s0,8(sp)
    80004384:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80004388:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000438c:	10200073          	sret
}
    80004390:	00813403          	ld	s0,8(sp)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    8000439c:	0000b797          	auipc	a5,0xb
    800043a0:	6dd7c783          	lbu	a5,1757(a5) # 8000fa79 <_ZN5Riscv16kernelMainCalledE>
    800043a4:	00078463          	beqz	a5,800043ac <_ZN5Riscv10kernelMainEv+0x10>
    800043a8:	00008067          	ret
{
    800043ac:	ff010113          	addi	sp,sp,-16
    800043b0:	00113423          	sd	ra,8(sp)
    800043b4:	00813023          	sd	s0,0(sp)
    800043b8:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800043bc:	00100793          	li	a5,1
    800043c0:	0000b717          	auipc	a4,0xb
    800043c4:	6af70ca3          	sb	a5,1721(a4) # 8000fa79 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	df0080e7          	jalr	-528(ra) # 800041b8 <_ZN5Riscv10initSystemEv>
    //slabCacheCreateTest2();
    //slabInitTest();
    //disableTimerInterrupts();
    enableInterrupts();
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	ed8080e7          	jalr	-296(ra) # 800042a8 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    800043d8:	00007797          	auipc	a5,0x7
    800043dc:	5887b783          	ld	a5,1416(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    800043e0:	0007b503          	ld	a0,0(a5)
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	4d0080e7          	jalr	1232(ra) # 800028b4 <_ZN3PCB10isFinishedEv>
    800043ec:	00051863          	bnez	a0,800043fc <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	f20080e7          	jalr	-224(ra) # 80002310 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800043f8:	fe1ff06f          	j	800043d8 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	eec080e7          	jalr	-276(ra) # 800042e8 <_ZN5Riscv9endSystemEv>
}
    80004404:	00813083          	ld	ra,8(sp)
    80004408:	00013403          	ld	s0,0(sp)
    8000440c:	01010113          	addi	sp,sp,16
    80004410:	00008067          	ret

0000000080004414 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004414:	ff010113          	addi	sp,sp,-16
    80004418:	00113423          	sd	ra,8(sp)
    8000441c:	00813023          	sd	s0,0(sp)
    80004420:	01010413          	addi	s0,sp,16
    userMain();
    80004424:	00002097          	auipc	ra,0x2
    80004428:	b98080e7          	jalr	-1128(ra) # 80005fbc <_Z8userMainv>
}
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00813423          	sd	s0,8(sp)
    80004444:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004448:	00200793          	li	a5,2
    8000444c:	1047b073          	csrc	sie,a5
}
    80004450:	00813403          	ld	s0,8(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret

000000008000445c <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00813423          	sd	s0,8(sp)
    80004464:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004468:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000446c:	00007717          	auipc	a4,0x7
    80004470:	50473703          	ld	a4,1284(a4) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004474:	00073703          	ld	a4,0(a4)
    80004478:	01073703          	ld	a4,16(a4)
    8000447c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004480:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004484:	00078593          	mv	a1,a5
}
    80004488:	00813403          	ld	s0,8(sp)
    8000448c:	01010113          	addi	sp,sp,16
    80004490:	00008067          	ret

0000000080004494 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004494:	ff010113          	addi	sp,sp,-16
    80004498:	00813423          	sd	s0,8(sp)
    8000449c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800044a0:	00007797          	auipc	a5,0x7
    800044a4:	4d07b783          	ld	a5,1232(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    800044a8:	0007b783          	ld	a5,0(a5)
    800044ac:	0007c783          	lbu	a5,0(a5)
    800044b0:	00078c63          	beqz	a5,800044c8 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800044b4:	10000793          	li	a5,256
    800044b8:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800044bc:	00813403          	ld	s0,8(sp)
    800044c0:	01010113          	addi	sp,sp,16
    800044c4:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800044c8:	10000793          	li	a5,256
    800044cc:	1007b073          	csrc	sstatus,a5
    800044d0:	fedff06f          	j	800044bc <_ZN5Riscv14changePrivModeEv+0x28>

00000000800044d4 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800044d4:	f9010113          	addi	sp,sp,-112
    800044d8:	06113423          	sd	ra,104(sp)
    800044dc:	06813023          	sd	s0,96(sp)
    800044e0:	04913c23          	sd	s1,88(sp)
    800044e4:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800044e8:	00070713          	mv	a4,a4
    800044ec:	00007797          	auipc	a5,0x7
    800044f0:	4a47b783          	ld	a5,1188(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x98>
    800044f4:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800044f8:	00007797          	auipc	a5,0x7
    800044fc:	4787b783          	ld	a5,1144(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004500:	0007b783          	ld	a5,0(a5)
    80004504:	14002773          	csrr	a4,sscratch
    80004508:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000450c:	142027f3          	csrr	a5,scause
    80004510:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004514:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004518:	00900713          	li	a4,9
    8000451c:	02f76e63          	bltu	a4,a5,80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80004520:	00800713          	li	a4,8
    80004524:	12e7f463          	bgeu	a5,a4,8000464c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004528:	00500713          	li	a4,5
    8000452c:	10e78a63          	beq	a5,a4,80004640 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80004530:	00700713          	li	a4,7
    80004534:	00e79863          	bne	a5,a4,80004544 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004538:	ffffe097          	auipc	ra,0xffffe
    8000453c:	3a0080e7          	jalr	928(ra) # 800028d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004540:	0dc0006f          	j	8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004544:	00200713          	li	a4,2
    80004548:	0ce79a63          	bne	a5,a4,8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	38c080e7          	jalr	908(ra) # 800028d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004554:	0c80006f          	j	8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004558:	fff00713          	li	a4,-1
    8000455c:	03f71713          	slli	a4,a4,0x3f
    80004560:	00170713          	addi	a4,a4,1
    80004564:	02e78863          	beq	a5,a4,80004594 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80004568:	fff00713          	li	a4,-1
    8000456c:	03f71713          	slli	a4,a4,0x3f
    80004570:	00970713          	addi	a4,a4,9
    80004574:	0ae79463          	bne	a5,a4,8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80004578:	fffff097          	auipc	ra,0xfffff
    8000457c:	c98080e7          	jalr	-872(ra) # 80003210 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004580:	00002097          	auipc	ra,0x2
    80004584:	5e4080e7          	jalr	1508(ra) # 80006b64 <plic_claim>
    80004588:	00002097          	auipc	ra,0x2
    8000458c:	614080e7          	jalr	1556(ra) # 80006b9c <plic_complete>
            break;
    80004590:	08c0006f          	j	8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004594:	141027f3          	csrr	a5,sepc
    80004598:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000459c:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800045a0:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800045a4:	100027f3          	csrr	a5,sstatus
    800045a8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800045ac:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800045b0:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800045b4:	00200793          	li	a5,2
    800045b8:	1447b073          	csrc	sip,a5
            totalTime++;
    800045bc:	0000b717          	auipc	a4,0xb
    800045c0:	4ac70713          	addi	a4,a4,1196 # 8000fa68 <_ZN5Riscv8pcbCacheE>
    800045c4:	01873783          	ld	a5,24(a4)
    800045c8:	00178793          	addi	a5,a5,1
    800045cc:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    800045d0:	00007497          	auipc	s1,0x7
    800045d4:	3684b483          	ld	s1,872(s1) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x40>
    800045d8:	0004b783          	ld	a5,0(s1)
    800045dc:	00178793          	addi	a5,a5,1
    800045e0:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	168080e7          	jalr	360(ra) # 8000374c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800045ec:	00007797          	auipc	a5,0x7
    800045f0:	3847b783          	ld	a5,900(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    800045f4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800045f8:	0187b783          	ld	a5,24(a5)
    800045fc:	0004b703          	ld	a4,0(s1)
    80004600:	02f77863          	bgeu	a4,a5,80004630 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80004604:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004608:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000460c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004610:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004614:	00000097          	auipc	ra,0x0
    80004618:	e80080e7          	jalr	-384(ra) # 80004494 <_ZN5Riscv14changePrivModeEv>
}
    8000461c:	06813083          	ld	ra,104(sp)
    80004620:	06013403          	ld	s0,96(sp)
    80004624:	05813483          	ld	s1,88(sp)
    80004628:	07010113          	addi	sp,sp,112
    8000462c:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004630:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004634:	ffffe097          	auipc	ra,0xffffe
    80004638:	03c080e7          	jalr	60(ra) # 80002670 <_ZN3PCB8dispatchEv>
    8000463c:	fc9ff06f          	j	80004604 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	298080e7          	jalr	664(ra) # 800028d8 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004648:	fd5ff06f          	j	8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    8000464c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004650:	14102773          	csrr	a4,sepc
    80004654:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004658:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    8000465c:	00470713          	addi	a4,a4,4
    80004660:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004664:	10002773          	csrr	a4,sstatus
    80004668:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    8000466c:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004670:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004674:	04300713          	li	a4,67
    80004678:	02f76463          	bltu	a4,a5,800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    8000467c:	00279793          	slli	a5,a5,0x2
    80004680:	00005717          	auipc	a4,0x5
    80004684:	c1470713          	addi	a4,a4,-1004 # 80009294 <CONSOLE_STATUS+0x284>
    80004688:	00e787b3          	add	a5,a5,a4
    8000468c:	0007a783          	lw	a5,0(a5)
    80004690:	00e787b3          	add	a5,a5,a4
    80004694:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	4f0080e7          	jalr	1264(ra) # 80004b88 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800046a0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800046a4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800046a8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800046ac:	14179073          	csrw	sepc,a5
            changePrivMode();
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	de4080e7          	jalr	-540(ra) # 80004494 <_ZN5Riscv14changePrivModeEv>
}
    800046b8:	f65ff06f          	j	8000461c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	530080e7          	jalr	1328(ra) # 80004bec <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800046c4:	fddff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	3d4080e7          	jalr	980(ra) # 80002a9c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800046d0:	fd1ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    800046d4:	ffffe097          	auipc	ra,0xffffe
    800046d8:	2e4080e7          	jalr	740(ra) # 800029b8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800046dc:	fc5ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	378080e7          	jalr	888(ra) # 80002a58 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800046e8:	fb9ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	238080e7          	jalr	568(ra) # 80002924 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800046f4:	fadff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	1e0080e7          	jalr	480(ra) # 800028d8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004700:	fa1ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004704:	ffffe097          	auipc	ra,0xffffe
    80004708:	250080e7          	jalr	592(ra) # 80002954 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    8000470c:	f95ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	420080e7          	jalr	1056(ra) # 80002b30 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004718:	f89ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	92c080e7          	jalr	-1748(ra) # 80005048 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004724:	f7dff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	9d0080e7          	jalr	-1584(ra) # 800050f8 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004730:	f71ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004734:	00001097          	auipc	ra,0x1
    80004738:	a18080e7          	jalr	-1512(ra) # 8000514c <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    8000473c:	f65ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80004740:	00001097          	auipc	ra,0x1
    80004744:	a50080e7          	jalr	-1456(ra) # 80005190 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004748:	f59ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    8000474c:	fffff097          	auipc	ra,0xfffff
    80004750:	cc8080e7          	jalr	-824(ra) # 80003414 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004754:	f4dff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	c8c080e7          	jalr	-884(ra) # 800033e4 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004760:	f41ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	e0c080e7          	jalr	-500(ra) # 80003570 <_ZN8KConsole14getCharHandlerEv>
                    break;
    8000476c:	f35ff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004770 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004770:	ff010113          	addi	sp,sp,-16
    80004774:	00813423          	sd	s0,8(sp)
    80004778:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000477c:	0000b717          	auipc	a4,0xb
    80004780:	30c72703          	lw	a4,780(a4) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004784:	00100793          	li	a5,1
    80004788:	02f70c63          	beq	a4,a5,800047c0 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    8000478c:	0000b797          	auipc	a5,0xb
    80004790:	2fc78793          	addi	a5,a5,764 # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004794:	00100713          	li	a4,1
    80004798:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000479c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800047a0:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800047a4:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800047a8:	00007797          	auipc	a5,0x7
    800047ac:	1d07b783          	ld	a5,464(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    800047b0:	0007b783          	ld	a5,0(a5)
    800047b4:	40a787b3          	sub	a5,a5,a0
    800047b8:	ff178793          	addi	a5,a5,-15
    800047bc:	00f53023          	sd	a5,0(a0)
}
    800047c0:	00813403          	ld	s0,8(sp)
    800047c4:	01010113          	addi	sp,sp,16
    800047c8:	00008067          	ret

00000000800047cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800047cc:	ff010113          	addi	sp,sp,-16
    800047d0:	00813423          	sd	s0,8(sp)
    800047d4:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800047d8:	0000b797          	auipc	a5,0xb
    800047dc:	2b07a783          	lw	a5,688(a5) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047e0:	02078a63          	beqz	a5,80004814 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800047e4:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800047e8:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800047ec:	0000b797          	auipc	a5,0xb
    800047f0:	2a47b783          	ld	a5,676(a5) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    800047f4:	02078663          	beqz	a5,80004820 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800047f8:	00007717          	auipc	a4,0x7
    800047fc:	18073703          	ld	a4,384(a4) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004800:	00073703          	ld	a4,0(a4)
    80004804:	02c76463          	bltu	a4,a2,8000482c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004808:	00863783          	ld	a5,8(a2)
    8000480c:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004810:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004814:	00813403          	ld	s0,8(sp)
    80004818:	01010113          	addi	sp,sp,16
    8000481c:	00008067          	ret
        headAllocated = newAllocated;
    80004820:	0000b797          	auipc	a5,0xb
    80004824:	26a7b823          	sd	a0,624(a5) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    80004828:	fedff06f          	j	80004814 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    8000482c:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004830:	0000b797          	auipc	a5,0xb
    80004834:	26a7b023          	sd	a0,608(a5) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    80004838:	fddff06f          	j	80004814 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

000000008000483c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    8000483c:	ff010113          	addi	sp,sp,-16
    80004840:	00813423          	sd	s0,8(sp)
    80004844:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004848:	0000b797          	auipc	a5,0xb
    8000484c:	2407a783          	lw	a5,576(a5) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004850:	02078c63          	beqz	a5,80004888 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004854:	0000b797          	auipc	a5,0xb
    80004858:	23c7b783          	ld	a5,572(a5) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000485c:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004860:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004864:	00000713          	li	a4,0
    while(curr != 0)
    80004868:	00078c63          	beqz	a5,80004880 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    8000486c:	00f56863          	bltu	a0,a5,8000487c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004870:	00078713          	mv	a4,a5
        curr = curr->next;
    80004874:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004878:	ff1ff06f          	j	80004868 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    8000487c:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004880:	00070a63          	beqz	a4,80004894 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004884:	00a73423          	sd	a0,8(a4)
}
    80004888:	00813403          	ld	s0,8(sp)
    8000488c:	01010113          	addi	sp,sp,16
    80004890:	00008067          	ret
        headAllocated = newAllocated;
    80004894:	0000b797          	auipc	a5,0xb
    80004898:	1ea7be23          	sd	a0,508(a5) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    8000489c:	fedff06f          	j	80004888 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

00000000800048a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800048a0:	0000b797          	auipc	a5,0xb
    800048a4:	1e87a783          	lw	a5,488(a5) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048a8:	0e078e63          	beqz	a5,800049a4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00813823          	sd	s0,16(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	02010413          	addi	s0,sp,32
    800048c0:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800048c4:	0000b497          	auipc	s1,0xb
    800048c8:	1d44b483          	ld	s1,468(s1) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800048cc:	00000713          	li	a4,0
    while(curr != 0)
    800048d0:	0a048e63          	beqz	s1,8000498c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    800048d4:	0004b783          	ld	a5,0(s1)
    800048d8:	00b7f863          	bgeu	a5,a1,800048e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800048dc:	00048713          	mv	a4,s1
        curr = curr->next;
    800048e0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800048e4:	fedff06f          	j	800048d0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800048e8:	01058693          	addi	a3,a1,16
    800048ec:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800048f0:	01078613          	addi	a2,a5,16
    800048f4:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800048f8:	00007517          	auipc	a0,0x7
    800048fc:	08053503          	ld	a0,128(a0) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004900:	00053503          	ld	a0,0(a0)
    80004904:	06d56063          	bltu	a0,a3,80004964 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004908:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    8000490c:	01000813          	li	a6,16
    80004910:	02a87663          	bgeu	a6,a0,8000493c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004914:	0084b783          	ld	a5,8(s1)
    80004918:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    8000491c:	ff050513          	addi	a0,a0,-16
    80004920:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004924:	00070663          	beqz	a4,80004930 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004928:	00d73423          	sd	a3,8(a4)
    8000492c:	0400006f          	j	8000496c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004930:	0000b797          	auipc	a5,0xb
    80004934:	16d7b423          	sd	a3,360(a5) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
    80004938:	0340006f          	j	8000496c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    8000493c:	00070a63          	beqz	a4,80004950 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004940:	0084b683          	ld	a3,8(s1)
    80004944:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004948:	00078593          	mv	a1,a5
    8000494c:	0200006f          	j	8000496c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004950:	0084b703          	ld	a4,8(s1)
    80004954:	0000b697          	auipc	a3,0xb
    80004958:	14e6b223          	sd	a4,324(a3) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    8000495c:	00078593          	mv	a1,a5
    80004960:	00c0006f          	j	8000496c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004964:	00070e63          	beqz	a4,80004980 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004968:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    8000496c:	00048513          	mv	a0,s1
    80004970:	00000097          	auipc	ra,0x0
    80004974:	e5c080e7          	jalr	-420(ra) # 800047cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004978:	01048513          	addi	a0,s1,16
            break;
    8000497c:	0140006f          	j	80004990 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004980:	0000b797          	auipc	a5,0xb
    80004984:	1007bc23          	sd	zero,280(a5) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
    80004988:	fe5ff06f          	j	8000496c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    8000498c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004990:	01813083          	ld	ra,24(sp)
    80004994:	01013403          	ld	s0,16(sp)
    80004998:	00813483          	ld	s1,8(sp)
    8000499c:	02010113          	addi	sp,sp,32
    800049a0:	00008067          	ret
        return nullptr;
    800049a4:	00000513          	li	a0,0
}
    800049a8:	00008067          	ret

00000000800049ac <_ZN15MemoryAllocator9mem_allocEm>:
{
    800049ac:	ff010113          	addi	sp,sp,-16
    800049b0:	00113423          	sd	ra,8(sp)
    800049b4:	00813023          	sd	s0,0(sp)
    800049b8:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	ee4080e7          	jalr	-284(ra) # 800048a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800049c4:	00813083          	ld	ra,8(sp)
    800049c8:	00013403          	ld	s0,0(sp)
    800049cc:	01010113          	addi	sp,sp,16
    800049d0:	00008067          	ret

00000000800049d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800049d4:	ff010113          	addi	sp,sp,-16
    800049d8:	00813423          	sd	s0,8(sp)
    800049dc:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800049e0:	0000b797          	auipc	a5,0xb
    800049e4:	0a87a783          	lw	a5,168(a5) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049e8:	06078263          	beqz	a5,80004a4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800049ec:	0000b797          	auipc	a5,0xb
    800049f0:	0ac7b783          	ld	a5,172(a5) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800049f4:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    800049f8:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    800049fc:	00000713          	li	a4,0
    while(curr != 0)
    80004a00:	00078c63          	beqz	a5,80004a18 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004a04:	00f56863          	bltu	a0,a5,80004a14 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004a08:	00078713          	mv	a4,a5
        curr = curr->next;
    80004a0c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004a10:	ff1ff06f          	j	80004a00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004a14:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004a18:	04070063          	beqz	a4,80004a58 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004a1c:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004a20:	00853783          	ld	a5,8(a0)
    80004a24:	00078a63          	beqz	a5,80004a38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004a28:	00053603          	ld	a2,0(a0)
    80004a2c:	01060693          	addi	a3,a2,16
    80004a30:	00d506b3          	add	a3,a0,a3
    80004a34:	02d78863          	beq	a5,a3,80004a64 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004a38:	00070a63          	beqz	a4,80004a4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004a3c:	00073683          	ld	a3,0(a4)
    80004a40:	01068793          	addi	a5,a3,16
    80004a44:	00f707b3          	add	a5,a4,a5
    80004a48:	02a78c63          	beq	a5,a0,80004a80 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004a4c:	00813403          	ld	s0,8(sp)
    80004a50:	01010113          	addi	sp,sp,16
    80004a54:	00008067          	ret
        headFree = newSegment;
    80004a58:	0000b797          	auipc	a5,0xb
    80004a5c:	04a7b023          	sd	a0,64(a5) # 8000fa98 <_ZN15MemoryAllocator8headFreeE>
    80004a60:	fc1ff06f          	j	80004a20 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004a64:	0007b683          	ld	a3,0(a5)
    80004a68:	00d60633          	add	a2,a2,a3
    80004a6c:	01060613          	addi	a2,a2,16
    80004a70:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004a74:	0087b783          	ld	a5,8(a5)
    80004a78:	00f53423          	sd	a5,8(a0)
    80004a7c:	fbdff06f          	j	80004a38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004a80:	00053783          	ld	a5,0(a0)
    80004a84:	00f686b3          	add	a3,a3,a5
    80004a88:	01068693          	addi	a3,a3,16
    80004a8c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004a90:	00853783          	ld	a5,8(a0)
    80004a94:	00f73423          	sd	a5,8(a4)
    80004a98:	fb5ff06f          	j	80004a4c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004a9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004a9c:	0000b797          	auipc	a5,0xb
    80004aa0:	fec7a783          	lw	a5,-20(a5) # 8000fa88 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004aa4:	08078263          	beqz	a5,80004b28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004aa8:	fe010113          	addi	sp,sp,-32
    80004aac:	00113c23          	sd	ra,24(sp)
    80004ab0:	00813823          	sd	s0,16(sp)
    80004ab4:	00913423          	sd	s1,8(sp)
    80004ab8:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004abc:	0000b497          	auipc	s1,0xb
    80004ac0:	fd44b483          	ld	s1,-44(s1) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004ac4:	00000713          	li	a4,0
    while(curr != 0)
    80004ac8:	02048a63          	beqz	s1,80004afc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004acc:	01048793          	addi	a5,s1,16
    80004ad0:	00a78863          	beq	a5,a0,80004ae0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004ad4:	00048713          	mv	a4,s1
        curr = curr->next;
    80004ad8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004adc:	fedff06f          	j	80004ac8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004ae0:	02070c63          	beqz	a4,80004b18 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004ae4:	0084b783          	ld	a5,8(s1)
    80004ae8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004aec:	0004b583          	ld	a1,0(s1)
    80004af0:	00048513          	mv	a0,s1
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	ee0080e7          	jalr	-288(ra) # 800049d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004afc:	02048a63          	beqz	s1,80004b30 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004b00:	00000513          	li	a0,0
    else
        return 1;
}
    80004b04:	01813083          	ld	ra,24(sp)
    80004b08:	01013403          	ld	s0,16(sp)
    80004b0c:	00813483          	ld	s1,8(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret
                headAllocated = curr->next;
    80004b18:	0084b783          	ld	a5,8(s1)
    80004b1c:	0000b717          	auipc	a4,0xb
    80004b20:	f6f73a23          	sd	a5,-140(a4) # 8000fa90 <_ZN15MemoryAllocator13headAllocatedE>
    80004b24:	fc9ff06f          	j	80004aec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004b28:	00100513          	li	a0,1
}
    80004b2c:	00008067          	ret
        return 1;
    80004b30:	00100513          	li	a0,1
    80004b34:	fd1ff06f          	j	80004b04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004b38 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00113423          	sd	ra,8(sp)
    80004b40:	00813023          	sd	s0,0(sp)
    80004b44:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004b48:	00000097          	auipc	ra,0x0
    80004b4c:	f54080e7          	jalr	-172(ra) # 80004a9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004b50:	00813083          	ld	ra,8(sp)
    80004b54:	00013403          	ld	s0,0(sp)
    80004b58:	01010113          	addi	sp,sp,16
    80004b5c:	00008067          	ret

0000000080004b60 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004b60:	ff010113          	addi	sp,sp,-16
    80004b64:	00113423          	sd	ra,8(sp)
    80004b68:	00813023          	sd	s0,0(sp)
    80004b6c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	e3c080e7          	jalr	-452(ra) # 800049ac <_ZN15MemoryAllocator9mem_allocEm>
}
    80004b78:	00813083          	ld	ra,8(sp)
    80004b7c:	00013403          	ld	s0,0(sp)
    80004b80:	01010113          	addi	sp,sp,16
    80004b84:	00008067          	ret

0000000080004b88 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004b88:	ff010113          	addi	sp,sp,-16
    80004b8c:	00113423          	sd	ra,8(sp)
    80004b90:	00813023          	sd	s0,0(sp)
    80004b94:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004b98:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004b9c:	00651513          	slli	a0,a0,0x6
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	fc0080e7          	jalr	-64(ra) # 80004b60 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004ba8:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004bac:	00000097          	auipc	ra,0x0
    80004bb0:	8b0080e7          	jalr	-1872(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004bb4:	00813083          	ld	ra,8(sp)
    80004bb8:	00013403          	ld	s0,0(sp)
    80004bbc:	01010113          	addi	sp,sp,16
    80004bc0:	00008067          	ret

0000000080004bc4 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004bc4:	ff010113          	addi	sp,sp,-16
    80004bc8:	00113423          	sd	ra,8(sp)
    80004bcc:	00813023          	sd	s0,0(sp)
    80004bd0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	f64080e7          	jalr	-156(ra) # 80004b38 <_ZN15MemoryAllocator8mem_freeEPv>
    80004bdc:	00813083          	ld	ra,8(sp)
    80004be0:	00013403          	ld	s0,0(sp)
    80004be4:	01010113          	addi	sp,sp,16
    80004be8:	00008067          	ret

0000000080004bec <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004bec:	ff010113          	addi	sp,sp,-16
    80004bf0:	00113423          	sd	ra,8(sp)
    80004bf4:	00813023          	sd	s0,0(sp)
    80004bf8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004bfc:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004c00:	00000097          	auipc	ra,0x0
    80004c04:	fc4080e7          	jalr	-60(ra) # 80004bc4 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004c08:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	850080e7          	jalr	-1968(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004c14:	00813083          	ld	ra,8(sp)
    80004c18:	00013403          	ld	s0,0(sp)
    80004c1c:	01010113          	addi	sp,sp,16
    80004c20:	00008067          	ret

0000000080004c24 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004c24:	ff010113          	addi	sp,sp,-16
    80004c28:	00113423          	sd	ra,8(sp)
    80004c2c:	00813023          	sd	s0,0(sp)
    80004c30:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004c34:	00f00593          	li	a1,15
    80004c38:	00007797          	auipc	a5,0x7
    80004c3c:	cd87b783          	ld	a5,-808(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004c40:	0007b503          	ld	a0,0(a5)
    80004c44:	ffffd097          	auipc	ra,0xffffd
    80004c48:	db8080e7          	jalr	-584(ra) # 800019fc <_Z9kmem_initPvi>
}
    80004c4c:	00813083          	ld	ra,8(sp)
    80004c50:	00013403          	ld	s0,0(sp)
    80004c54:	01010113          	addi	sp,sp,16
    80004c58:	00008067          	ret

0000000080004c5c <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	01213023          	sd	s2,0(sp)
    80004c70:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004c74:	00f00593          	li	a1,15
    80004c78:	00007797          	auipc	a5,0x7
    80004c7c:	c987b783          	ld	a5,-872(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004c80:	0007b503          	ld	a0,0(a5)
    80004c84:	ffffd097          	auipc	ra,0xffffd
    80004c88:	d78080e7          	jalr	-648(ra) # 800019fc <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c8c:	00000693          	li	a3,0
    80004c90:	00000613          	li	a2,0
    80004c94:	00a00593          	li	a1,10
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	71050513          	addi	a0,a0,1808 # 800093a8 <CONSOLE_STATUS+0x398>
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	ec0080e7          	jalr	-320(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ca8:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004cac:	00000693          	li	a3,0
    80004cb0:	00000613          	li	a2,0
    80004cb4:	00a00593          	li	a1,10
    80004cb8:	00004517          	auipc	a0,0x4
    80004cbc:	70050513          	addi	a0,a0,1792 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	ea0080e7          	jalr	-352(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004cc8:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004ccc:	00000693          	li	a3,0
    80004cd0:	00000613          	li	a2,0
    80004cd4:	00a00593          	li	a1,10
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	6f050513          	addi	a0,a0,1776 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	e80080e7          	jalr	-384(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ce8:	00048a63          	beqz	s1,80004cfc <_Z19slabCacheCreateTestv+0xa0>
    80004cec:	00090863          	beqz	s2,80004cfc <_Z19slabCacheCreateTestv+0xa0>
    80004cf0:	00050663          	beqz	a0,80004cfc <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	0dc080e7          	jalr	220(ra) # 80001dd0 <_Z22printSlabAllocatorInfov>
}
    80004cfc:	01813083          	ld	ra,24(sp)
    80004d00:	01013403          	ld	s0,16(sp)
    80004d04:	00813483          	ld	s1,8(sp)
    80004d08:	00013903          	ld	s2,0(sp)
    80004d0c:	02010113          	addi	sp,sp,32
    80004d10:	00008067          	ret

0000000080004d14 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004d14:	fe010113          	addi	sp,sp,-32
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00813823          	sd	s0,16(sp)
    80004d20:	00913423          	sd	s1,8(sp)
    80004d24:	01213023          	sd	s2,0(sp)
    80004d28:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004d2c:	00f00593          	li	a1,15
    80004d30:	00007797          	auipc	a5,0x7
    80004d34:	be07b783          	ld	a5,-1056(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d38:	0007b503          	ld	a0,0(a5)
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	cc0080e7          	jalr	-832(ra) # 800019fc <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004d44:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004d48:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004d4c:	04400793          	li	a5,68
    80004d50:	0297c663          	blt	a5,s1,80004d7c <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004d54:	00000693          	li	a3,0
    80004d58:	00000613          	li	a2,0
    80004d5c:	00a00593          	li	a1,10
    80004d60:	00004517          	auipc	a0,0x4
    80004d64:	64850513          	addi	a0,a0,1608 # 800093a8 <CONSOLE_STATUS+0x398>
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	df8080e7          	jalr	-520(ra) # 80001b60 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d70:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004d74:	0014849b          	addiw	s1,s1,1
    80004d78:	fd5ff06f          	j	80004d4c <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	054080e7          	jalr	84(ra) # 80001dd0 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004d84:	00090513          	mv	a0,s2
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	360080e7          	jalr	864(ra) # 800020e8 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004d90:	ffffd097          	auipc	ra,0xffffd
    80004d94:	040080e7          	jalr	64(ra) # 80001dd0 <_Z22printSlabAllocatorInfov>
    80004d98:	01813083          	ld	ra,24(sp)
    80004d9c:	01013403          	ld	s0,16(sp)
    80004da0:	00813483          	ld	s1,8(sp)
    80004da4:	00013903          	ld	s2,0(sp)
    80004da8:	02010113          	addi	sp,sp,32
    80004dac:	00008067          	ret

0000000080004db0 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004db0:	ff010113          	addi	sp,sp,-16
    80004db4:	00813423          	sd	s0,8(sp)
    80004db8:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004dbc:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004dc0:	00053423          	sd	zero,8(a0)
    80004dc4:	00053023          	sd	zero,0(a0)
}
    80004dc8:	00813403          	ld	s0,8(sp)
    80004dcc:	01010113          	addi	sp,sp,16
    80004dd0:	00008067          	ret

0000000080004dd4 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004dd4:	ff010113          	addi	sp,sp,-16
    80004dd8:	00813423          	sd	s0,8(sp)
    80004ddc:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004de0:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004de4:	00053783          	ld	a5,0(a0)
    80004de8:	00078e63          	beqz	a5,80004e04 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004dec:	00853783          	ld	a5,8(a0)
    80004df0:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004df4:	00b53423          	sd	a1,8(a0)
    }
}
    80004df8:	00813403          	ld	s0,8(sp)
    80004dfc:	01010113          	addi	sp,sp,16
    80004e00:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004e04:	00b53423          	sd	a1,8(a0)
    80004e08:	00b53023          	sd	a1,0(a0)
    80004e0c:	fedff06f          	j	80004df8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004e10 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004e10:	ff010113          	addi	sp,sp,-16
    80004e14:	00113423          	sd	ra,8(sp)
    80004e18:	00813023          	sd	s0,0(sp)
    80004e1c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004e20:	00007797          	auipc	a5,0x7
    80004e24:	b507b783          	ld	a5,-1200(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004e28:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004e2c:	00200793          	li	a5,2
    80004e30:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004e34:	00000097          	auipc	ra,0x0
    80004e38:	fa0080e7          	jalr	-96(ra) # 80004dd4 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	834080e7          	jalr	-1996(ra) # 80002670 <_ZN3PCB8dispatchEv>
}
    80004e44:	00813083          	ld	ra,8(sp)
    80004e48:	00013403          	ld	s0,0(sp)
    80004e4c:	01010113          	addi	sp,sp,16
    80004e50:	00008067          	ret

0000000080004e54 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004e54:	00007797          	auipc	a5,0x7
    80004e58:	b1c7b783          	ld	a5,-1252(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004e5c:	0007b783          	ld	a5,0(a5)
    80004e60:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004e64:	01052783          	lw	a5,16(a0)
    80004e68:	fff7879b          	addiw	a5,a5,-1
    80004e6c:	00f52823          	sw	a5,16(a0)
    80004e70:	02079713          	slli	a4,a5,0x20
    80004e74:	00074663          	bltz	a4,80004e80 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004e78:	00000513          	li	a0,0
    80004e7c:	00008067          	ret
{
    80004e80:	ff010113          	addi	sp,sp,-16
    80004e84:	00113423          	sd	ra,8(sp)
    80004e88:	00813023          	sd	s0,0(sp)
    80004e8c:	01010413          	addi	s0,sp,16
        block();
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	f80080e7          	jalr	-128(ra) # 80004e10 <_ZN10KSemaphore5blockEv>
}
    80004e98:	00000513          	li	a0,0
    80004e9c:	00813083          	ld	ra,8(sp)
    80004ea0:	00013403          	ld	s0,0(sp)
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret

0000000080004eac <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004eac:	ff010113          	addi	sp,sp,-16
    80004eb0:	00813423          	sd	s0,8(sp)
    80004eb4:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004eb8:	00053503          	ld	a0,0(a0)
    80004ebc:	00813403          	ld	s0,8(sp)
    80004ec0:	01010113          	addi	sp,sp,16
    80004ec4:	00008067          	ret

0000000080004ec8 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004ec8:	ff010113          	addi	sp,sp,-16
    80004ecc:	00813423          	sd	s0,8(sp)
    80004ed0:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004ed4:	00053783          	ld	a5,0(a0)
    80004ed8:	00078c63          	beqz	a5,80004ef0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004edc:	0087b703          	ld	a4,8(a5)
    80004ee0:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004ee4:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004ee8:	00053783          	ld	a5,0(a0)
    80004eec:	00078863          	beqz	a5,80004efc <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004ef0:	00813403          	ld	s0,8(sp)
    80004ef4:	01010113          	addi	sp,sp,16
    80004ef8:	00008067          	ret
        tailBlocked =0;
    80004efc:	00053423          	sd	zero,8(a0)
    80004f00:	ff1ff06f          	j	80004ef0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004f04 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004f04:	fe010113          	addi	sp,sp,-32
    80004f08:	00113c23          	sd	ra,24(sp)
    80004f0c:	00813823          	sd	s0,16(sp)
    80004f10:	00913423          	sd	s1,8(sp)
    80004f14:	01213023          	sd	s2,0(sp)
    80004f18:	02010413          	addi	s0,sp,32
    80004f1c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004f20:	00090513          	mv	a0,s2
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	f88080e7          	jalr	-120(ra) # 80004eac <_ZN10KSemaphore15getFirstBlockedEv>
    80004f2c:	00050493          	mv	s1,a0
    80004f30:	02050463          	beqz	a0,80004f58 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004f34:	00090513          	mv	a0,s2
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	f90080e7          	jalr	-112(ra) # 80004ec8 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004f40:	00100793          	li	a5,1
    80004f44:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004f48:	00048513          	mv	a0,s1
    80004f4c:	fffff097          	auipc	ra,0xfffff
    80004f50:	910080e7          	jalr	-1776(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004f54:	fcdff06f          	j	80004f20 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004f58:	01813083          	ld	ra,24(sp)
    80004f5c:	01013403          	ld	s0,16(sp)
    80004f60:	00813483          	ld	s1,8(sp)
    80004f64:	00013903          	ld	s2,0(sp)
    80004f68:	02010113          	addi	sp,sp,32
    80004f6c:	00008067          	ret

0000000080004f70 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004f70:	fe010113          	addi	sp,sp,-32
    80004f74:	00113c23          	sd	ra,24(sp)
    80004f78:	00813823          	sd	s0,16(sp)
    80004f7c:	00913423          	sd	s1,8(sp)
    80004f80:	01213023          	sd	s2,0(sp)
    80004f84:	02010413          	addi	s0,sp,32
    80004f88:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	f20080e7          	jalr	-224(ra) # 80004eac <_ZN10KSemaphore15getFirstBlockedEv>
    80004f94:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004f98:	00090513          	mv	a0,s2
    80004f9c:	00000097          	auipc	ra,0x0
    80004fa0:	f2c080e7          	jalr	-212(ra) # 80004ec8 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004fa4:	00048863          	beqz	s1,80004fb4 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80004fa8:	00048513          	mv	a0,s1
    80004fac:	fffff097          	auipc	ra,0xfffff
    80004fb0:	8b0080e7          	jalr	-1872(ra) # 8000385c <_ZN9Scheduler3putEP3PCB>
    }
}
    80004fb4:	01813083          	ld	ra,24(sp)
    80004fb8:	01013403          	ld	s0,16(sp)
    80004fbc:	00813483          	ld	s1,8(sp)
    80004fc0:	00013903          	ld	s2,0(sp)
    80004fc4:	02010113          	addi	sp,sp,32
    80004fc8:	00008067          	ret

0000000080004fcc <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004fcc:	01052783          	lw	a5,16(a0)
    80004fd0:	0017879b          	addiw	a5,a5,1
    80004fd4:	0007871b          	sext.w	a4,a5
    80004fd8:	00f52823          	sw	a5,16(a0)
    80004fdc:	00e05663          	blez	a4,80004fe8 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004fe0:	00000513          	li	a0,0
    80004fe4:	00008067          	ret
uint64 KSemaphore::signal() {
    80004fe8:	ff010113          	addi	sp,sp,-16
    80004fec:	00113423          	sd	ra,8(sp)
    80004ff0:	00813023          	sd	s0,0(sp)
    80004ff4:	01010413          	addi	s0,sp,16
        unblock();
    80004ff8:	00000097          	auipc	ra,0x0
    80004ffc:	f78080e7          	jalr	-136(ra) # 80004f70 <_ZN10KSemaphore7unblockEv>
}
    80005000:	00000513          	li	a0,0
    80005004:	00813083          	ld	ra,8(sp)
    80005008:	00013403          	ld	s0,0(sp)
    8000500c:	01010113          	addi	sp,sp,16
    80005010:	00008067          	ret

0000000080005014 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80005014:	ff010113          	addi	sp,sp,-16
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	00813023          	sd	s0,0(sp)
    80005020:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80005024:	00007797          	auipc	a5,0x7
    80005028:	8f47b783          	ld	a5,-1804(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000502c:	0007b503          	ld	a0,0(a5)
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	a04080e7          	jalr	-1532(ra) # 80001a34 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005038:	00813083          	ld	ra,8(sp)
    8000503c:	00013403          	ld	s0,0(sp)
    80005040:	01010113          	addi	sp,sp,16
    80005044:	00008067          	ret

0000000080005048 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005048:	fd010113          	addi	sp,sp,-48
    8000504c:	02113423          	sd	ra,40(sp)
    80005050:	02813023          	sd	s0,32(sp)
    80005054:	00913c23          	sd	s1,24(sp)
    80005058:	01213823          	sd	s2,16(sp)
    8000505c:	01313423          	sd	s3,8(sp)
    80005060:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005064:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005068:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000506c:	01800513          	li	a0,24
    80005070:	00000097          	auipc	ra,0x0
    80005074:	fa4080e7          	jalr	-92(ra) # 80005014 <_ZN10KSemaphorenwEm>
    80005078:	00050493          	mv	s1,a0
    8000507c:	0009859b          	sext.w	a1,s3
    80005080:	00000097          	auipc	ra,0x0
    80005084:	d30080e7          	jalr	-720(ra) # 80004db0 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005088:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000508c:	02048663          	beqz	s1,800050b8 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80005090:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005094:	fffff097          	auipc	ra,0xfffff
    80005098:	3c8080e7          	jalr	968(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    8000509c:	02813083          	ld	ra,40(sp)
    800050a0:	02013403          	ld	s0,32(sp)
    800050a4:	01813483          	ld	s1,24(sp)
    800050a8:	01013903          	ld	s2,16(sp)
    800050ac:	00813983          	ld	s3,8(sp)
    800050b0:	03010113          	addi	sp,sp,48
    800050b4:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    800050b8:	fff00513          	li	a0,-1
    800050bc:	fd9ff06f          	j	80005094 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

00000000800050c0 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    800050c0:	ff010113          	addi	sp,sp,-16
    800050c4:	00113423          	sd	ra,8(sp)
    800050c8:	00813023          	sd	s0,0(sp)
    800050cc:	01010413          	addi	s0,sp,16
    800050d0:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    800050d4:	00007797          	auipc	a5,0x7
    800050d8:	8447b783          	ld	a5,-1980(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x20>
    800050dc:	0007b503          	ld	a0,0(a5)
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	b30080e7          	jalr	-1232(ra) # 80001c10 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    800050e8:	00813083          	ld	ra,8(sp)
    800050ec:	00013403          	ld	s0,0(sp)
    800050f0:	01010113          	addi	sp,sp,16
    800050f4:	00008067          	ret

00000000800050f8 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800050f8:	ff010113          	addi	sp,sp,-16
    800050fc:	00113423          	sd	ra,8(sp)
    80005100:	00813023          	sd	s0,0(sp)
    80005104:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005108:	00058513          	mv	a0,a1
    kSem->wait();
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	d48080e7          	jalr	-696(ra) # 80004e54 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005114:	00007797          	auipc	a5,0x7
    80005118:	85c7b783          	ld	a5,-1956(a5) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000511c:	0007b783          	ld	a5,0(a5)
    80005120:	0587c783          	lbu	a5,88(a5)
    80005124:	02078063          	beqz	a5,80005144 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005128:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    8000512c:	fffff097          	auipc	ra,0xfffff
    80005130:	330080e7          	jalr	816(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80005134:	00813083          	ld	ra,8(sp)
    80005138:	00013403          	ld	s0,0(sp)
    8000513c:	01010113          	addi	sp,sp,16
    80005140:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005144:	00000513          	li	a0,0
    80005148:	fe5ff06f          	j	8000512c <_ZN10KSemaphore14semWaitHandlerEv+0x34>

000000008000514c <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    8000514c:	ff010113          	addi	sp,sp,-16
    80005150:	00113423          	sd	ra,8(sp)
    80005154:	00813023          	sd	s0,0(sp)
    80005158:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000515c:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005160:	02050463          	beqz	a0,80005188 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005164:	00000097          	auipc	ra,0x0
    80005168:	e68080e7          	jalr	-408(ra) # 80004fcc <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    8000516c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005170:	fffff097          	auipc	ra,0xfffff
    80005174:	2ec080e7          	jalr	748(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    80005178:	00813083          	ld	ra,8(sp)
    8000517c:	00013403          	ld	s0,0(sp)
    80005180:	01010113          	addi	sp,sp,16
    80005184:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005188:	00100513          	li	a0,1
    8000518c:	fe5ff06f          	j	80005170 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005190 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00113c23          	sd	ra,24(sp)
    80005198:	00813823          	sd	s0,16(sp)
    8000519c:	00913423          	sd	s1,8(sp)
    800051a0:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800051a4:	00058493          	mv	s1,a1
    delete kSem;
    800051a8:	00048e63          	beqz	s1,800051c4 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800051ac:	00048513          	mv	a0,s1
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	d54080e7          	jalr	-684(ra) # 80004f04 <_ZN10KSemaphoreD1Ev>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	f04080e7          	jalr	-252(ra) # 800050c0 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    800051c4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	294080e7          	jalr	660(ra) # 8000445c <_ZN5Riscv13w_a0_sscratchEv>
}
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret

00000000800051e4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800051e4:	fe010113          	addi	sp,sp,-32
    800051e8:	00113c23          	sd	ra,24(sp)
    800051ec:	00813823          	sd	s0,16(sp)
    800051f0:	00913423          	sd	s1,8(sp)
    800051f4:	02010413          	addi	s0,sp,32
    800051f8:	00050493          	mv	s1,a0
    LOCK();
    800051fc:	00100613          	li	a2,1
    80005200:	00000593          	li	a1,0
    80005204:	0000b517          	auipc	a0,0xb
    80005208:	89c50513          	addi	a0,a0,-1892 # 8000faa0 <lockPrint>
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	00c080e7          	jalr	12(ra) # 80001218 <copy_and_swap>
    80005214:	fe0514e3          	bnez	a0,800051fc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005218:	0004c503          	lbu	a0,0(s1)
    8000521c:	00050a63          	beqz	a0,80005230 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	2f4080e7          	jalr	756(ra) # 80002514 <_Z4putcc>
        string++;
    80005228:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000522c:	fedff06f          	j	80005218 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005230:	00000613          	li	a2,0
    80005234:	00100593          	li	a1,1
    80005238:	0000b517          	auipc	a0,0xb
    8000523c:	86850513          	addi	a0,a0,-1944 # 8000faa0 <lockPrint>
    80005240:	ffffc097          	auipc	ra,0xffffc
    80005244:	fd8080e7          	jalr	-40(ra) # 80001218 <copy_and_swap>
    80005248:	fe0514e3          	bnez	a0,80005230 <_Z11printStringPKc+0x4c>
}
    8000524c:	01813083          	ld	ra,24(sp)
    80005250:	01013403          	ld	s0,16(sp)
    80005254:	00813483          	ld	s1,8(sp)
    80005258:	02010113          	addi	sp,sp,32
    8000525c:	00008067          	ret

0000000080005260 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005260:	fd010113          	addi	sp,sp,-48
    80005264:	02113423          	sd	ra,40(sp)
    80005268:	02813023          	sd	s0,32(sp)
    8000526c:	00913c23          	sd	s1,24(sp)
    80005270:	01213823          	sd	s2,16(sp)
    80005274:	01313423          	sd	s3,8(sp)
    80005278:	01413023          	sd	s4,0(sp)
    8000527c:	03010413          	addi	s0,sp,48
    80005280:	00050993          	mv	s3,a0
    80005284:	00058a13          	mv	s4,a1
    LOCK();
    80005288:	00100613          	li	a2,1
    8000528c:	00000593          	li	a1,0
    80005290:	0000b517          	auipc	a0,0xb
    80005294:	81050513          	addi	a0,a0,-2032 # 8000faa0 <lockPrint>
    80005298:	ffffc097          	auipc	ra,0xffffc
    8000529c:	f80080e7          	jalr	-128(ra) # 80001218 <copy_and_swap>
    800052a0:	fe0514e3          	bnez	a0,80005288 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052a4:	00000913          	li	s2,0
    800052a8:	00090493          	mv	s1,s2
    800052ac:	0019091b          	addiw	s2,s2,1
    800052b0:	03495a63          	bge	s2,s4,800052e4 <_Z9getStringPci+0x84>
        cc = getc();
    800052b4:	ffffd097          	auipc	ra,0xffffd
    800052b8:	238080e7          	jalr	568(ra) # 800024ec <_Z4getcv>
        if(cc < 1)
    800052bc:	02050463          	beqz	a0,800052e4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800052c0:	009984b3          	add	s1,s3,s1
    800052c4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052c8:	00a00793          	li	a5,10
    800052cc:	00f50a63          	beq	a0,a5,800052e0 <_Z9getStringPci+0x80>
    800052d0:	00d00793          	li	a5,13
    800052d4:	fcf51ae3          	bne	a0,a5,800052a8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800052d8:	00090493          	mv	s1,s2
    800052dc:	0080006f          	j	800052e4 <_Z9getStringPci+0x84>
    800052e0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052e4:	009984b3          	add	s1,s3,s1
    800052e8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800052ec:	00000613          	li	a2,0
    800052f0:	00100593          	li	a1,1
    800052f4:	0000a517          	auipc	a0,0xa
    800052f8:	7ac50513          	addi	a0,a0,1964 # 8000faa0 <lockPrint>
    800052fc:	ffffc097          	auipc	ra,0xffffc
    80005300:	f1c080e7          	jalr	-228(ra) # 80001218 <copy_and_swap>
    80005304:	fe0514e3          	bnez	a0,800052ec <_Z9getStringPci+0x8c>
    return buf;
}
    80005308:	00098513          	mv	a0,s3
    8000530c:	02813083          	ld	ra,40(sp)
    80005310:	02013403          	ld	s0,32(sp)
    80005314:	01813483          	ld	s1,24(sp)
    80005318:	01013903          	ld	s2,16(sp)
    8000531c:	00813983          	ld	s3,8(sp)
    80005320:	00013a03          	ld	s4,0(sp)
    80005324:	03010113          	addi	sp,sp,48
    80005328:	00008067          	ret

000000008000532c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000532c:	ff010113          	addi	sp,sp,-16
    80005330:	00813423          	sd	s0,8(sp)
    80005334:	01010413          	addi	s0,sp,16
    80005338:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000533c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005340:	0006c603          	lbu	a2,0(a3)
    80005344:	fd06071b          	addiw	a4,a2,-48
    80005348:	0ff77713          	andi	a4,a4,255
    8000534c:	00900793          	li	a5,9
    80005350:	02e7e063          	bltu	a5,a4,80005370 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005354:	0025179b          	slliw	a5,a0,0x2
    80005358:	00a787bb          	addw	a5,a5,a0
    8000535c:	0017979b          	slliw	a5,a5,0x1
    80005360:	00168693          	addi	a3,a3,1
    80005364:	00c787bb          	addw	a5,a5,a2
    80005368:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000536c:	fd5ff06f          	j	80005340 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005370:	00813403          	ld	s0,8(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret

000000008000537c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000537c:	fc010113          	addi	sp,sp,-64
    80005380:	02113c23          	sd	ra,56(sp)
    80005384:	02813823          	sd	s0,48(sp)
    80005388:	02913423          	sd	s1,40(sp)
    8000538c:	03213023          	sd	s2,32(sp)
    80005390:	01313c23          	sd	s3,24(sp)
    80005394:	04010413          	addi	s0,sp,64
    80005398:	00050493          	mv	s1,a0
    8000539c:	00058913          	mv	s2,a1
    800053a0:	00060993          	mv	s3,a2
    LOCK();
    800053a4:	00100613          	li	a2,1
    800053a8:	00000593          	li	a1,0
    800053ac:	0000a517          	auipc	a0,0xa
    800053b0:	6f450513          	addi	a0,a0,1780 # 8000faa0 <lockPrint>
    800053b4:	ffffc097          	auipc	ra,0xffffc
    800053b8:	e64080e7          	jalr	-412(ra) # 80001218 <copy_and_swap>
    800053bc:	fe0514e3          	bnez	a0,800053a4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800053c0:	00098463          	beqz	s3,800053c8 <_Z8printIntiii+0x4c>
    800053c4:	0804c463          	bltz	s1,8000544c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053c8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053cc:	00000593          	li	a1,0
    }

    i = 0;
    800053d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800053d4:	0009079b          	sext.w	a5,s2
    800053d8:	0325773b          	remuw	a4,a0,s2
    800053dc:	00048613          	mv	a2,s1
    800053e0:	0014849b          	addiw	s1,s1,1
    800053e4:	02071693          	slli	a3,a4,0x20
    800053e8:	0206d693          	srli	a3,a3,0x20
    800053ec:	00006717          	auipc	a4,0x6
    800053f0:	4f470713          	addi	a4,a4,1268 # 8000b8e0 <digits>
    800053f4:	00d70733          	add	a4,a4,a3
    800053f8:	00074683          	lbu	a3,0(a4)
    800053fc:	fd040713          	addi	a4,s0,-48
    80005400:	00c70733          	add	a4,a4,a2
    80005404:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005408:	0005071b          	sext.w	a4,a0
    8000540c:	0325553b          	divuw	a0,a0,s2
    80005410:	fcf772e3          	bgeu	a4,a5,800053d4 <_Z8printIntiii+0x58>
    if(neg)
    80005414:	00058c63          	beqz	a1,8000542c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005418:	fd040793          	addi	a5,s0,-48
    8000541c:	009784b3          	add	s1,a5,s1
    80005420:	02d00793          	li	a5,45
    80005424:	fef48823          	sb	a5,-16(s1)
    80005428:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000542c:	fff4849b          	addiw	s1,s1,-1
    80005430:	0204c463          	bltz	s1,80005458 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005434:	fd040793          	addi	a5,s0,-48
    80005438:	009787b3          	add	a5,a5,s1
    8000543c:	ff07c503          	lbu	a0,-16(a5)
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	0d4080e7          	jalr	212(ra) # 80002514 <_Z4putcc>
    80005448:	fe5ff06f          	j	8000542c <_Z8printIntiii+0xb0>
        x = -xx;
    8000544c:	4090053b          	negw	a0,s1
        neg = 1;
    80005450:	00100593          	li	a1,1
        x = -xx;
    80005454:	f7dff06f          	j	800053d0 <_Z8printIntiii+0x54>

    UNLOCK();
    80005458:	00000613          	li	a2,0
    8000545c:	00100593          	li	a1,1
    80005460:	0000a517          	auipc	a0,0xa
    80005464:	64050513          	addi	a0,a0,1600 # 8000faa0 <lockPrint>
    80005468:	ffffc097          	auipc	ra,0xffffc
    8000546c:	db0080e7          	jalr	-592(ra) # 80001218 <copy_and_swap>
    80005470:	fe0514e3          	bnez	a0,80005458 <_Z8printIntiii+0xdc>
}
    80005474:	03813083          	ld	ra,56(sp)
    80005478:	03013403          	ld	s0,48(sp)
    8000547c:	02813483          	ld	s1,40(sp)
    80005480:	02013903          	ld	s2,32(sp)
    80005484:	01813983          	ld	s3,24(sp)
    80005488:	04010113          	addi	sp,sp,64
    8000548c:	00008067          	ret

0000000080005490 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005490:	fd010113          	addi	sp,sp,-48
    80005494:	02113423          	sd	ra,40(sp)
    80005498:	02813023          	sd	s0,32(sp)
    8000549c:	00913c23          	sd	s1,24(sp)
    800054a0:	01213823          	sd	s2,16(sp)
    800054a4:	01313423          	sd	s3,8(sp)
    800054a8:	03010413          	addi	s0,sp,48
    800054ac:	00050493          	mv	s1,a0
    800054b0:	00058913          	mv	s2,a1
    800054b4:	0015879b          	addiw	a5,a1,1
    800054b8:	0007851b          	sext.w	a0,a5
    800054bc:	00f4a023          	sw	a5,0(s1)
    800054c0:	0004a823          	sw	zero,16(s1)
    800054c4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054c8:	00251513          	slli	a0,a0,0x2
    800054cc:	ffffd097          	auipc	ra,0xffffd
    800054d0:	d68080e7          	jalr	-664(ra) # 80002234 <_Z9mem_allocm>
    800054d4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054d8:	01000513          	li	a0,16
    800054dc:	fffff097          	auipc	ra,0xfffff
    800054e0:	804080e7          	jalr	-2044(ra) # 80003ce0 <_Znwm>
    800054e4:	00050993          	mv	s3,a0
    800054e8:	00000593          	li	a1,0
    800054ec:	fffff097          	auipc	ra,0xfffff
    800054f0:	a48080e7          	jalr	-1464(ra) # 80003f34 <_ZN9SemaphoreC1Ej>
    800054f4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800054f8:	01000513          	li	a0,16
    800054fc:	ffffe097          	auipc	ra,0xffffe
    80005500:	7e4080e7          	jalr	2020(ra) # 80003ce0 <_Znwm>
    80005504:	00050993          	mv	s3,a0
    80005508:	00090593          	mv	a1,s2
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	a28080e7          	jalr	-1496(ra) # 80003f34 <_ZN9SemaphoreC1Ej>
    80005514:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005518:	01000513          	li	a0,16
    8000551c:	ffffe097          	auipc	ra,0xffffe
    80005520:	7c4080e7          	jalr	1988(ra) # 80003ce0 <_Znwm>
    80005524:	00050913          	mv	s2,a0
    80005528:	00100593          	li	a1,1
    8000552c:	fffff097          	auipc	ra,0xfffff
    80005530:	a08080e7          	jalr	-1528(ra) # 80003f34 <_ZN9SemaphoreC1Ej>
    80005534:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005538:	01000513          	li	a0,16
    8000553c:	ffffe097          	auipc	ra,0xffffe
    80005540:	7a4080e7          	jalr	1956(ra) # 80003ce0 <_Znwm>
    80005544:	00050913          	mv	s2,a0
    80005548:	00100593          	li	a1,1
    8000554c:	fffff097          	auipc	ra,0xfffff
    80005550:	9e8080e7          	jalr	-1560(ra) # 80003f34 <_ZN9SemaphoreC1Ej>
    80005554:	0324b823          	sd	s2,48(s1)
}
    80005558:	02813083          	ld	ra,40(sp)
    8000555c:	02013403          	ld	s0,32(sp)
    80005560:	01813483          	ld	s1,24(sp)
    80005564:	01013903          	ld	s2,16(sp)
    80005568:	00813983          	ld	s3,8(sp)
    8000556c:	03010113          	addi	sp,sp,48
    80005570:	00008067          	ret
    80005574:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005578:	00098513          	mv	a0,s3
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	78c080e7          	jalr	1932(ra) # 80003d08 <_ZdlPv>
    80005584:	00048513          	mv	a0,s1
    80005588:	0000b097          	auipc	ra,0xb
    8000558c:	600080e7          	jalr	1536(ra) # 80010b88 <_Unwind_Resume>
    80005590:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005594:	00098513          	mv	a0,s3
    80005598:	ffffe097          	auipc	ra,0xffffe
    8000559c:	770080e7          	jalr	1904(ra) # 80003d08 <_ZdlPv>
    800055a0:	00048513          	mv	a0,s1
    800055a4:	0000b097          	auipc	ra,0xb
    800055a8:	5e4080e7          	jalr	1508(ra) # 80010b88 <_Unwind_Resume>
    800055ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055b0:	00090513          	mv	a0,s2
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	754080e7          	jalr	1876(ra) # 80003d08 <_ZdlPv>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	0000b097          	auipc	ra,0xb
    800055c4:	5c8080e7          	jalr	1480(ra) # 80010b88 <_Unwind_Resume>
    800055c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055cc:	00090513          	mv	a0,s2
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	738080e7          	jalr	1848(ra) # 80003d08 <_ZdlPv>
    800055d8:	00048513          	mv	a0,s1
    800055dc:	0000b097          	auipc	ra,0xb
    800055e0:	5ac080e7          	jalr	1452(ra) # 80010b88 <_Unwind_Resume>

00000000800055e4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800055e4:	fe010113          	addi	sp,sp,-32
    800055e8:	00113c23          	sd	ra,24(sp)
    800055ec:	00813823          	sd	s0,16(sp)
    800055f0:	00913423          	sd	s1,8(sp)
    800055f4:	01213023          	sd	s2,0(sp)
    800055f8:	02010413          	addi	s0,sp,32
    800055fc:	00050493          	mv	s1,a0
    80005600:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005604:	01853503          	ld	a0,24(a0)
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	8f4080e7          	jalr	-1804(ra) # 80003efc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005610:	0304b503          	ld	a0,48(s1)
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	8e8080e7          	jalr	-1816(ra) # 80003efc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000561c:	0084b783          	ld	a5,8(s1)
    80005620:	0144a703          	lw	a4,20(s1)
    80005624:	00271713          	slli	a4,a4,0x2
    80005628:	00e787b3          	add	a5,a5,a4
    8000562c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005630:	0144a783          	lw	a5,20(s1)
    80005634:	0017879b          	addiw	a5,a5,1
    80005638:	0004a703          	lw	a4,0(s1)
    8000563c:	02e7e7bb          	remw	a5,a5,a4
    80005640:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005644:	0304b503          	ld	a0,48(s1)
    80005648:	fffff097          	auipc	ra,0xfffff
    8000564c:	938080e7          	jalr	-1736(ra) # 80003f80 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005650:	0204b503          	ld	a0,32(s1)
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	92c080e7          	jalr	-1748(ra) # 80003f80 <_ZN9Semaphore6signalEv>

}
    8000565c:	01813083          	ld	ra,24(sp)
    80005660:	01013403          	ld	s0,16(sp)
    80005664:	00813483          	ld	s1,8(sp)
    80005668:	00013903          	ld	s2,0(sp)
    8000566c:	02010113          	addi	sp,sp,32
    80005670:	00008067          	ret

0000000080005674 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005674:	fe010113          	addi	sp,sp,-32
    80005678:	00113c23          	sd	ra,24(sp)
    8000567c:	00813823          	sd	s0,16(sp)
    80005680:	00913423          	sd	s1,8(sp)
    80005684:	01213023          	sd	s2,0(sp)
    80005688:	02010413          	addi	s0,sp,32
    8000568c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005690:	02053503          	ld	a0,32(a0)
    80005694:	fffff097          	auipc	ra,0xfffff
    80005698:	868080e7          	jalr	-1944(ra) # 80003efc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000569c:	0284b503          	ld	a0,40(s1)
    800056a0:	fffff097          	auipc	ra,0xfffff
    800056a4:	85c080e7          	jalr	-1956(ra) # 80003efc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056a8:	0084b703          	ld	a4,8(s1)
    800056ac:	0104a783          	lw	a5,16(s1)
    800056b0:	00279693          	slli	a3,a5,0x2
    800056b4:	00d70733          	add	a4,a4,a3
    800056b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056bc:	0017879b          	addiw	a5,a5,1
    800056c0:	0004a703          	lw	a4,0(s1)
    800056c4:	02e7e7bb          	remw	a5,a5,a4
    800056c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800056cc:	0284b503          	ld	a0,40(s1)
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	8b0080e7          	jalr	-1872(ra) # 80003f80 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800056d8:	0184b503          	ld	a0,24(s1)
    800056dc:	fffff097          	auipc	ra,0xfffff
    800056e0:	8a4080e7          	jalr	-1884(ra) # 80003f80 <_ZN9Semaphore6signalEv>

    return ret;
}
    800056e4:	00090513          	mv	a0,s2
    800056e8:	01813083          	ld	ra,24(sp)
    800056ec:	01013403          	ld	s0,16(sp)
    800056f0:	00813483          	ld	s1,8(sp)
    800056f4:	00013903          	ld	s2,0(sp)
    800056f8:	02010113          	addi	sp,sp,32
    800056fc:	00008067          	ret

0000000080005700 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005700:	fe010113          	addi	sp,sp,-32
    80005704:	00113c23          	sd	ra,24(sp)
    80005708:	00813823          	sd	s0,16(sp)
    8000570c:	00913423          	sd	s1,8(sp)
    80005710:	01213023          	sd	s2,0(sp)
    80005714:	02010413          	addi	s0,sp,32
    80005718:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000571c:	02853503          	ld	a0,40(a0)
    80005720:	ffffe097          	auipc	ra,0xffffe
    80005724:	7dc080e7          	jalr	2012(ra) # 80003efc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005728:	0304b503          	ld	a0,48(s1)
    8000572c:	ffffe097          	auipc	ra,0xffffe
    80005730:	7d0080e7          	jalr	2000(ra) # 80003efc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005734:	0144a783          	lw	a5,20(s1)
    80005738:	0104a903          	lw	s2,16(s1)
    8000573c:	0327ce63          	blt	a5,s2,80005778 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005740:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005744:	0304b503          	ld	a0,48(s1)
    80005748:	fffff097          	auipc	ra,0xfffff
    8000574c:	838080e7          	jalr	-1992(ra) # 80003f80 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005750:	0284b503          	ld	a0,40(s1)
    80005754:	fffff097          	auipc	ra,0xfffff
    80005758:	82c080e7          	jalr	-2004(ra) # 80003f80 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000575c:	00090513          	mv	a0,s2
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	01013403          	ld	s0,16(sp)
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	00013903          	ld	s2,0(sp)
    80005770:	02010113          	addi	sp,sp,32
    80005774:	00008067          	ret
        ret = cap - head + tail;
    80005778:	0004a703          	lw	a4,0(s1)
    8000577c:	4127093b          	subw	s2,a4,s2
    80005780:	00f9093b          	addw	s2,s2,a5
    80005784:	fc1ff06f          	j	80005744 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005788 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005788:	fe010113          	addi	sp,sp,-32
    8000578c:	00113c23          	sd	ra,24(sp)
    80005790:	00813823          	sd	s0,16(sp)
    80005794:	00913423          	sd	s1,8(sp)
    80005798:	02010413          	addi	s0,sp,32
    8000579c:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057a0:	00a00513          	li	a0,10
    800057a4:	fffff097          	auipc	ra,0xfffff
    800057a8:	83c080e7          	jalr	-1988(ra) # 80003fe0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	c2c50513          	addi	a0,a0,-980 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	a30080e7          	jalr	-1488(ra) # 800051e4 <_Z11printStringPKc>
    while (getCnt()) {
    800057bc:	00048513          	mv	a0,s1
    800057c0:	00000097          	auipc	ra,0x0
    800057c4:	f40080e7          	jalr	-192(ra) # 80005700 <_ZN9BufferCPP6getCntEv>
    800057c8:	02050c63          	beqz	a0,80005800 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800057cc:	0084b783          	ld	a5,8(s1)
    800057d0:	0104a703          	lw	a4,16(s1)
    800057d4:	00271713          	slli	a4,a4,0x2
    800057d8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800057dc:	0007c503          	lbu	a0,0(a5)
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	800080e7          	jalr	-2048(ra) # 80003fe0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800057e8:	0104a783          	lw	a5,16(s1)
    800057ec:	0017879b          	addiw	a5,a5,1
    800057f0:	0004a703          	lw	a4,0(s1)
    800057f4:	02e7e7bb          	remw	a5,a5,a4
    800057f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800057fc:	fc1ff06f          	j	800057bc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005800:	02100513          	li	a0,33
    80005804:	ffffe097          	auipc	ra,0xffffe
    80005808:	7dc080e7          	jalr	2012(ra) # 80003fe0 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000580c:	00a00513          	li	a0,10
    80005810:	ffffe097          	auipc	ra,0xffffe
    80005814:	7d0080e7          	jalr	2000(ra) # 80003fe0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005818:	0084b503          	ld	a0,8(s1)
    8000581c:	ffffd097          	auipc	ra,0xffffd
    80005820:	a48080e7          	jalr	-1464(ra) # 80002264 <_Z8mem_freePv>
    delete itemAvailable;
    80005824:	0204b503          	ld	a0,32(s1)
    80005828:	00050863          	beqz	a0,80005838 <_ZN9BufferCPPD1Ev+0xb0>
    8000582c:	00053783          	ld	a5,0(a0)
    80005830:	0087b783          	ld	a5,8(a5)
    80005834:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005838:	0184b503          	ld	a0,24(s1)
    8000583c:	00050863          	beqz	a0,8000584c <_ZN9BufferCPPD1Ev+0xc4>
    80005840:	00053783          	ld	a5,0(a0)
    80005844:	0087b783          	ld	a5,8(a5)
    80005848:	000780e7          	jalr	a5
    delete mutexTail;
    8000584c:	0304b503          	ld	a0,48(s1)
    80005850:	00050863          	beqz	a0,80005860 <_ZN9BufferCPPD1Ev+0xd8>
    80005854:	00053783          	ld	a5,0(a0)
    80005858:	0087b783          	ld	a5,8(a5)
    8000585c:	000780e7          	jalr	a5
    delete mutexHead;
    80005860:	0284b503          	ld	a0,40(s1)
    80005864:	00050863          	beqz	a0,80005874 <_ZN9BufferCPPD1Ev+0xec>
    80005868:	00053783          	ld	a5,0(a0)
    8000586c:	0087b783          	ld	a5,8(a5)
    80005870:	000780e7          	jalr	a5
}
    80005874:	01813083          	ld	ra,24(sp)
    80005878:	01013403          	ld	s0,16(sp)
    8000587c:	00813483          	ld	s1,8(sp)
    80005880:	02010113          	addi	sp,sp,32
    80005884:	00008067          	ret

0000000080005888 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005888:	fe010113          	addi	sp,sp,-32
    8000588c:	00113c23          	sd	ra,24(sp)
    80005890:	00813823          	sd	s0,16(sp)
    80005894:	00913423          	sd	s1,8(sp)
    80005898:	01213023          	sd	s2,0(sp)
    8000589c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800058a0:	00000913          	li	s2,0
    800058a4:	0380006f          	j	800058dc <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800058a8:	ffffd097          	auipc	ra,0xffffd
    800058ac:	a68080e7          	jalr	-1432(ra) # 80002310 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800058b0:	00148493          	addi	s1,s1,1
    800058b4:	000027b7          	lui	a5,0x2
    800058b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800058bc:	0097ee63          	bltu	a5,s1,800058d8 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058c0:	00000713          	li	a4,0
    800058c4:	000077b7          	lui	a5,0x7
    800058c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058cc:	fce7eee3          	bltu	a5,a4,800058a8 <_Z11workerBodyAPv+0x20>
    800058d0:	00170713          	addi	a4,a4,1
    800058d4:	ff1ff06f          	j	800058c4 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800058d8:	00190913          	addi	s2,s2,1
    800058dc:	00900793          	li	a5,9
    800058e0:	0527e063          	bltu	a5,s2,80005920 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	b0c50513          	addi	a0,a0,-1268 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	8f8080e7          	jalr	-1800(ra) # 800051e4 <_Z11printStringPKc>
    800058f4:	00000613          	li	a2,0
    800058f8:	00a00593          	li	a1,10
    800058fc:	0009051b          	sext.w	a0,s2
    80005900:	00000097          	auipc	ra,0x0
    80005904:	a7c080e7          	jalr	-1412(ra) # 8000537c <_Z8printIntiii>
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	d0050513          	addi	a0,a0,-768 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005910:	00000097          	auipc	ra,0x0
    80005914:	8d4080e7          	jalr	-1836(ra) # 800051e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005918:	00000493          	li	s1,0
    8000591c:	f99ff06f          	j	800058b4 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005920:	00004517          	auipc	a0,0x4
    80005924:	ad850513          	addi	a0,a0,-1320 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	8bc080e7          	jalr	-1860(ra) # 800051e4 <_Z11printStringPKc>
    finishedA = true;
    80005930:	00100793          	li	a5,1
    80005934:	0000a717          	auipc	a4,0xa
    80005938:	16f70a23          	sb	a5,372(a4) # 8000faa8 <finishedA>
}
    8000593c:	01813083          	ld	ra,24(sp)
    80005940:	01013403          	ld	s0,16(sp)
    80005944:	00813483          	ld	s1,8(sp)
    80005948:	00013903          	ld	s2,0(sp)
    8000594c:	02010113          	addi	sp,sp,32
    80005950:	00008067          	ret

0000000080005954 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005954:	fe010113          	addi	sp,sp,-32
    80005958:	00113c23          	sd	ra,24(sp)
    8000595c:	00813823          	sd	s0,16(sp)
    80005960:	00913423          	sd	s1,8(sp)
    80005964:	01213023          	sd	s2,0(sp)
    80005968:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000596c:	00000913          	li	s2,0
    80005970:	0380006f          	j	800059a8 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005974:	ffffd097          	auipc	ra,0xffffd
    80005978:	99c080e7          	jalr	-1636(ra) # 80002310 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000597c:	00148493          	addi	s1,s1,1
    80005980:	000027b7          	lui	a5,0x2
    80005984:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005988:	0097ee63          	bltu	a5,s1,800059a4 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000598c:	00000713          	li	a4,0
    80005990:	000077b7          	lui	a5,0x7
    80005994:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005998:	fce7eee3          	bltu	a5,a4,80005974 <_Z11workerBodyBPv+0x20>
    8000599c:	00170713          	addi	a4,a4,1
    800059a0:	ff1ff06f          	j	80005990 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800059a4:	00190913          	addi	s2,s2,1
    800059a8:	00f00793          	li	a5,15
    800059ac:	0527e063          	bltu	a5,s2,800059ec <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	a5850513          	addi	a0,a0,-1448 # 80009408 <CONSOLE_STATUS+0x3f8>
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	82c080e7          	jalr	-2004(ra) # 800051e4 <_Z11printStringPKc>
    800059c0:	00000613          	li	a2,0
    800059c4:	00a00593          	li	a1,10
    800059c8:	0009051b          	sext.w	a0,s2
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	9b0080e7          	jalr	-1616(ra) # 8000537c <_Z8printIntiii>
    800059d4:	00004517          	auipc	a0,0x4
    800059d8:	c3450513          	addi	a0,a0,-972 # 80009608 <CONSOLE_STATUS+0x5f8>
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	808080e7          	jalr	-2040(ra) # 800051e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059e4:	00000493          	li	s1,0
    800059e8:	f99ff06f          	j	80005980 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800059ec:	ffffd097          	auipc	ra,0xffffd
    800059f0:	924080e7          	jalr	-1756(ra) # 80002310 <_Z15thread_dispatchv>
    printString("B finished!\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	a1c50513          	addi	a0,a0,-1508 # 80009410 <CONSOLE_STATUS+0x400>
    800059fc:	fffff097          	auipc	ra,0xfffff
    80005a00:	7e8080e7          	jalr	2024(ra) # 800051e4 <_Z11printStringPKc>
    finishedB = true;
    80005a04:	00100793          	li	a5,1
    80005a08:	0000a717          	auipc	a4,0xa
    80005a0c:	0af700a3          	sb	a5,161(a4) # 8000faa9 <finishedB>
}
    80005a10:	01813083          	ld	ra,24(sp)
    80005a14:	01013403          	ld	s0,16(sp)
    80005a18:	00813483          	ld	s1,8(sp)
    80005a1c:	00013903          	ld	s2,0(sp)
    80005a20:	02010113          	addi	sp,sp,32
    80005a24:	00008067          	ret

0000000080005a28 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80005a28:	fe010113          	addi	sp,sp,-32
    80005a2c:	00113c23          	sd	ra,24(sp)
    80005a30:	00813823          	sd	s0,16(sp)
    80005a34:	00913423          	sd	s1,8(sp)
    80005a38:	01213023          	sd	s2,0(sp)
    80005a3c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a40:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a44:	00600493          	li	s1,6
    while (--i > 0) {
    80005a48:	fff4849b          	addiw	s1,s1,-1
    80005a4c:	04905463          	blez	s1,80005a94 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	9d050513          	addi	a0,a0,-1584 # 80009420 <CONSOLE_STATUS+0x410>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	78c080e7          	jalr	1932(ra) # 800051e4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a60:	00000613          	li	a2,0
    80005a64:	00a00593          	li	a1,10
    80005a68:	0009051b          	sext.w	a0,s2
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	910080e7          	jalr	-1776(ra) # 8000537c <_Z8printIntiii>
        printString(" !\n");
    80005a74:	00004517          	auipc	a0,0x4
    80005a78:	9b450513          	addi	a0,a0,-1612 # 80009428 <CONSOLE_STATUS+0x418>
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	768080e7          	jalr	1896(ra) # 800051e4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a84:	00090513          	mv	a0,s2
    80005a88:	ffffd097          	auipc	ra,0xffffd
    80005a8c:	98c080e7          	jalr	-1652(ra) # 80002414 <_Z10time_sleepm>
    while (--i > 0) {
    80005a90:	fb9ff06f          	j	80005a48 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a94:	00a00793          	li	a5,10
    80005a98:	02f95933          	divu	s2,s2,a5
    80005a9c:	fff90913          	addi	s2,s2,-1
    80005aa0:	0000a797          	auipc	a5,0xa
    80005aa4:	00878793          	addi	a5,a5,8 # 8000faa8 <finishedA>
    80005aa8:	01278933          	add	s2,a5,s2
    80005aac:	00100793          	li	a5,1
    80005ab0:	00f90423          	sb	a5,8(s2)
}
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	00013903          	ld	s2,0(sp)
    80005ac4:	02010113          	addi	sp,sp,32
    80005ac8:	00008067          	ret

0000000080005acc <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00113c23          	sd	ra,24(sp)
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	01213023          	sd	s2,0(sp)
    80005ae0:	02010413          	addi	s0,sp,32
    80005ae4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005ae8:	00100793          	li	a5,1
    80005aec:	02a7f863          	bgeu	a5,a0,80005b1c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005af0:	00a00793          	li	a5,10
    80005af4:	02f577b3          	remu	a5,a0,a5
    80005af8:	02078e63          	beqz	a5,80005b34 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005afc:	fff48513          	addi	a0,s1,-1
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	fcc080e7          	jalr	-52(ra) # 80005acc <_Z9fibonaccim>
    80005b08:	00050913          	mv	s2,a0
    80005b0c:	ffe48513          	addi	a0,s1,-2
    80005b10:	00000097          	auipc	ra,0x0
    80005b14:	fbc080e7          	jalr	-68(ra) # 80005acc <_Z9fibonaccim>
    80005b18:	00a90533          	add	a0,s2,a0
}
    80005b1c:	01813083          	ld	ra,24(sp)
    80005b20:	01013403          	ld	s0,16(sp)
    80005b24:	00813483          	ld	s1,8(sp)
    80005b28:	00013903          	ld	s2,0(sp)
    80005b2c:	02010113          	addi	sp,sp,32
    80005b30:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	7dc080e7          	jalr	2012(ra) # 80002310 <_Z15thread_dispatchv>
    80005b3c:	fc1ff06f          	j	80005afc <_Z9fibonaccim+0x30>

0000000080005b40 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005b40:	fe010113          	addi	sp,sp,-32
    80005b44:	00113c23          	sd	ra,24(sp)
    80005b48:	00813823          	sd	s0,16(sp)
    80005b4c:	00913423          	sd	s1,8(sp)
    80005b50:	01213023          	sd	s2,0(sp)
    80005b54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b58:	00000493          	li	s1,0
    80005b5c:	0400006f          	j	80005b9c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005b60:	00004517          	auipc	a0,0x4
    80005b64:	8d050513          	addi	a0,a0,-1840 # 80009430 <CONSOLE_STATUS+0x420>
    80005b68:	fffff097          	auipc	ra,0xfffff
    80005b6c:	67c080e7          	jalr	1660(ra) # 800051e4 <_Z11printStringPKc>
    80005b70:	00000613          	li	a2,0
    80005b74:	00a00593          	li	a1,10
    80005b78:	00048513          	mv	a0,s1
    80005b7c:	00000097          	auipc	ra,0x0
    80005b80:	800080e7          	jalr	-2048(ra) # 8000537c <_Z8printIntiii>
    80005b84:	00004517          	auipc	a0,0x4
    80005b88:	a8450513          	addi	a0,a0,-1404 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	658080e7          	jalr	1624(ra) # 800051e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b94:	0014849b          	addiw	s1,s1,1
    80005b98:	0ff4f493          	andi	s1,s1,255
    80005b9c:	00200793          	li	a5,2
    80005ba0:	fc97f0e3          	bgeu	a5,s1,80005b60 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	89450513          	addi	a0,a0,-1900 # 80009438 <CONSOLE_STATUS+0x428>
    80005bac:	fffff097          	auipc	ra,0xfffff
    80005bb0:	638080e7          	jalr	1592(ra) # 800051e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005bb4:	00700313          	li	t1,7
    thread_dispatch();
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	758080e7          	jalr	1880(ra) # 80002310 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005bc0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005bc4:	00004517          	auipc	a0,0x4
    80005bc8:	88450513          	addi	a0,a0,-1916 # 80009448 <CONSOLE_STATUS+0x438>
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	618080e7          	jalr	1560(ra) # 800051e4 <_Z11printStringPKc>
    80005bd4:	00000613          	li	a2,0
    80005bd8:	00a00593          	li	a1,10
    80005bdc:	0009051b          	sext.w	a0,s2
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	79c080e7          	jalr	1948(ra) # 8000537c <_Z8printIntiii>
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	a2050513          	addi	a0,a0,-1504 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	5f4080e7          	jalr	1524(ra) # 800051e4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005bf8:	00c00513          	li	a0,12
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	ed0080e7          	jalr	-304(ra) # 80005acc <_Z9fibonaccim>
    80005c04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005c08:	00004517          	auipc	a0,0x4
    80005c0c:	84850513          	addi	a0,a0,-1976 # 80009450 <CONSOLE_STATUS+0x440>
    80005c10:	fffff097          	auipc	ra,0xfffff
    80005c14:	5d4080e7          	jalr	1492(ra) # 800051e4 <_Z11printStringPKc>
    80005c18:	00000613          	li	a2,0
    80005c1c:	00a00593          	li	a1,10
    80005c20:	0009051b          	sext.w	a0,s2
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	758080e7          	jalr	1880(ra) # 8000537c <_Z8printIntiii>
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	9dc50513          	addi	a0,a0,-1572 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	5b0080e7          	jalr	1456(ra) # 800051e4 <_Z11printStringPKc>
    80005c3c:	0400006f          	j	80005c7c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005c40:	00003517          	auipc	a0,0x3
    80005c44:	7f050513          	addi	a0,a0,2032 # 80009430 <CONSOLE_STATUS+0x420>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	59c080e7          	jalr	1436(ra) # 800051e4 <_Z11printStringPKc>
    80005c50:	00000613          	li	a2,0
    80005c54:	00a00593          	li	a1,10
    80005c58:	00048513          	mv	a0,s1
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	720080e7          	jalr	1824(ra) # 8000537c <_Z8printIntiii>
    80005c64:	00004517          	auipc	a0,0x4
    80005c68:	9a450513          	addi	a0,a0,-1628 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	578080e7          	jalr	1400(ra) # 800051e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c74:	0014849b          	addiw	s1,s1,1
    80005c78:	0ff4f493          	andi	s1,s1,255
    80005c7c:	00500793          	li	a5,5
    80005c80:	fc97f0e3          	bgeu	a5,s1,80005c40 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	68c080e7          	jalr	1676(ra) # 80002310 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005c8c:	00003517          	auipc	a0,0x3
    80005c90:	76c50513          	addi	a0,a0,1900 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	550080e7          	jalr	1360(ra) # 800051e4 <_Z11printStringPKc>
    finishedC = true;
    80005c9c:	00100793          	li	a5,1
    80005ca0:	0000a717          	auipc	a4,0xa
    80005ca4:	e0f70923          	sb	a5,-494(a4) # 8000fab2 <finishedC>
}
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	01013403          	ld	s0,16(sp)
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	00013903          	ld	s2,0(sp)
    80005cb8:	02010113          	addi	sp,sp,32
    80005cbc:	00008067          	ret

0000000080005cc0 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005cc0:	fe010113          	addi	sp,sp,-32
    80005cc4:	00113c23          	sd	ra,24(sp)
    80005cc8:	00813823          	sd	s0,16(sp)
    80005ccc:	00913423          	sd	s1,8(sp)
    80005cd0:	01213023          	sd	s2,0(sp)
    80005cd4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005cd8:	00a00493          	li	s1,10
    80005cdc:	0400006f          	j	80005d1c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ce0:	00003517          	auipc	a0,0x3
    80005ce4:	78050513          	addi	a0,a0,1920 # 80009460 <CONSOLE_STATUS+0x450>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	4fc080e7          	jalr	1276(ra) # 800051e4 <_Z11printStringPKc>
    80005cf0:	00000613          	li	a2,0
    80005cf4:	00a00593          	li	a1,10
    80005cf8:	00048513          	mv	a0,s1
    80005cfc:	fffff097          	auipc	ra,0xfffff
    80005d00:	680080e7          	jalr	1664(ra) # 8000537c <_Z8printIntiii>
    80005d04:	00004517          	auipc	a0,0x4
    80005d08:	90450513          	addi	a0,a0,-1788 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005d0c:	fffff097          	auipc	ra,0xfffff
    80005d10:	4d8080e7          	jalr	1240(ra) # 800051e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d14:	0014849b          	addiw	s1,s1,1
    80005d18:	0ff4f493          	andi	s1,s1,255
    80005d1c:	00c00793          	li	a5,12
    80005d20:	fc97f0e3          	bgeu	a5,s1,80005ce0 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d24:	00003517          	auipc	a0,0x3
    80005d28:	74450513          	addi	a0,a0,1860 # 80009468 <CONSOLE_STATUS+0x458>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	4b8080e7          	jalr	1208(ra) # 800051e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d34:	00500313          	li	t1,5
    thread_dispatch();
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	5d8080e7          	jalr	1496(ra) # 80002310 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d40:	01000513          	li	a0,16
    80005d44:	00000097          	auipc	ra,0x0
    80005d48:	d88080e7          	jalr	-632(ra) # 80005acc <_Z9fibonaccim>
    80005d4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d50:	00003517          	auipc	a0,0x3
    80005d54:	72850513          	addi	a0,a0,1832 # 80009478 <CONSOLE_STATUS+0x468>
    80005d58:	fffff097          	auipc	ra,0xfffff
    80005d5c:	48c080e7          	jalr	1164(ra) # 800051e4 <_Z11printStringPKc>
    80005d60:	00000613          	li	a2,0
    80005d64:	00a00593          	li	a1,10
    80005d68:	0009051b          	sext.w	a0,s2
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	610080e7          	jalr	1552(ra) # 8000537c <_Z8printIntiii>
    80005d74:	00004517          	auipc	a0,0x4
    80005d78:	89450513          	addi	a0,a0,-1900 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	468080e7          	jalr	1128(ra) # 800051e4 <_Z11printStringPKc>
    80005d84:	0400006f          	j	80005dc4 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d88:	00003517          	auipc	a0,0x3
    80005d8c:	6d850513          	addi	a0,a0,1752 # 80009460 <CONSOLE_STATUS+0x450>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	454080e7          	jalr	1108(ra) # 800051e4 <_Z11printStringPKc>
    80005d98:	00000613          	li	a2,0
    80005d9c:	00a00593          	li	a1,10
    80005da0:	00048513          	mv	a0,s1
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	5d8080e7          	jalr	1496(ra) # 8000537c <_Z8printIntiii>
    80005dac:	00004517          	auipc	a0,0x4
    80005db0:	85c50513          	addi	a0,a0,-1956 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	430080e7          	jalr	1072(ra) # 800051e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005dbc:	0014849b          	addiw	s1,s1,1
    80005dc0:	0ff4f493          	andi	s1,s1,255
    80005dc4:	00f00793          	li	a5,15
    80005dc8:	fc97f0e3          	bgeu	a5,s1,80005d88 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	544080e7          	jalr	1348(ra) # 80002310 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005dd4:	00003517          	auipc	a0,0x3
    80005dd8:	6b450513          	addi	a0,a0,1716 # 80009488 <CONSOLE_STATUS+0x478>
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	408080e7          	jalr	1032(ra) # 800051e4 <_Z11printStringPKc>
    finishedD = true;
    80005de4:	00100793          	li	a5,1
    80005de8:	0000a717          	auipc	a4,0xa
    80005dec:	ccf705a3          	sb	a5,-821(a4) # 8000fab3 <finishedD>
}
    80005df0:	01813083          	ld	ra,24(sp)
    80005df4:	01013403          	ld	s0,16(sp)
    80005df8:	00813483          	ld	s1,8(sp)
    80005dfc:	00013903          	ld	s2,0(sp)
    80005e00:	02010113          	addi	sp,sp,32
    80005e04:	00008067          	ret

0000000080005e08 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005e08:	fc010113          	addi	sp,sp,-64
    80005e0c:	02113c23          	sd	ra,56(sp)
    80005e10:	02813823          	sd	s0,48(sp)
    80005e14:	02913423          	sd	s1,40(sp)
    80005e18:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e1c:	00000613          	li	a2,0
    80005e20:	00000597          	auipc	a1,0x0
    80005e24:	a6858593          	addi	a1,a1,-1432 # 80005888 <_Z11workerBodyAPv>
    80005e28:	fc040513          	addi	a0,s0,-64
    80005e2c:	ffffc097          	auipc	ra,0xffffc
    80005e30:	464080e7          	jalr	1124(ra) # 80002290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005e34:	00003517          	auipc	a0,0x3
    80005e38:	66450513          	addi	a0,a0,1636 # 80009498 <CONSOLE_STATUS+0x488>
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	3a8080e7          	jalr	936(ra) # 800051e4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e44:	00000613          	li	a2,0
    80005e48:	00000597          	auipc	a1,0x0
    80005e4c:	b0c58593          	addi	a1,a1,-1268 # 80005954 <_Z11workerBodyBPv>
    80005e50:	fc840513          	addi	a0,s0,-56
    80005e54:	ffffc097          	auipc	ra,0xffffc
    80005e58:	43c080e7          	jalr	1084(ra) # 80002290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005e5c:	00003517          	auipc	a0,0x3
    80005e60:	65450513          	addi	a0,a0,1620 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	380080e7          	jalr	896(ra) # 800051e4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005e6c:	00000613          	li	a2,0
    80005e70:	00000597          	auipc	a1,0x0
    80005e74:	cd058593          	addi	a1,a1,-816 # 80005b40 <_Z11workerBodyCPv>
    80005e78:	fd040513          	addi	a0,s0,-48
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	414080e7          	jalr	1044(ra) # 80002290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005e84:	00003517          	auipc	a0,0x3
    80005e88:	64450513          	addi	a0,a0,1604 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	358080e7          	jalr	856(ra) # 800051e4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005e94:	00000613          	li	a2,0
    80005e98:	00000597          	auipc	a1,0x0
    80005e9c:	e2858593          	addi	a1,a1,-472 # 80005cc0 <_Z11workerBodyDPv>
    80005ea0:	fd840513          	addi	a0,s0,-40
    80005ea4:	ffffc097          	auipc	ra,0xffffc
    80005ea8:	3ec080e7          	jalr	1004(ra) # 80002290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005eac:	00003517          	auipc	a0,0x3
    80005eb0:	63450513          	addi	a0,a0,1588 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	330080e7          	jalr	816(ra) # 800051e4 <_Z11printStringPKc>
    80005ebc:	00c0006f          	j	80005ec8 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	450080e7          	jalr	1104(ra) # 80002310 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005ec8:	0000a797          	auipc	a5,0xa
    80005ecc:	be07c783          	lbu	a5,-1056(a5) # 8000faa8 <finishedA>
    80005ed0:	fe0788e3          	beqz	a5,80005ec0 <_Z18Threads_C_API_testv+0xb8>
    80005ed4:	0000a797          	auipc	a5,0xa
    80005ed8:	bd57c783          	lbu	a5,-1067(a5) # 8000faa9 <finishedB>
    80005edc:	fe0782e3          	beqz	a5,80005ec0 <_Z18Threads_C_API_testv+0xb8>
    80005ee0:	0000a797          	auipc	a5,0xa
    80005ee4:	bd27c783          	lbu	a5,-1070(a5) # 8000fab2 <finishedC>
    80005ee8:	fc078ce3          	beqz	a5,80005ec0 <_Z18Threads_C_API_testv+0xb8>
    80005eec:	0000a797          	auipc	a5,0xa
    80005ef0:	bc77c783          	lbu	a5,-1081(a5) # 8000fab3 <finishedD>
    80005ef4:	fc0786e3          	beqz	a5,80005ec0 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005ef8:	fc040493          	addi	s1,s0,-64
    80005efc:	0080006f          	j	80005f04 <_Z18Threads_C_API_testv+0xfc>
    80005f00:	00848493          	addi	s1,s1,8
    80005f04:	fe040793          	addi	a5,s0,-32
    80005f08:	00f48c63          	beq	s1,a5,80005f20 <_Z18Threads_C_API_testv+0x118>
    80005f0c:	0004b503          	ld	a0,0(s1)
    80005f10:	fe0508e3          	beqz	a0,80005f00 <_Z18Threads_C_API_testv+0xf8>
    80005f14:	ffffc097          	auipc	ra,0xffffc
    80005f18:	678080e7          	jalr	1656(ra) # 8000258c <_ZN7_threaddlEPv>
    80005f1c:	fe5ff06f          	j	80005f00 <_Z18Threads_C_API_testv+0xf8>
}
    80005f20:	03813083          	ld	ra,56(sp)
    80005f24:	03013403          	ld	s0,48(sp)
    80005f28:	02813483          	ld	s1,40(sp)
    80005f2c:	04010113          	addi	sp,sp,64
    80005f30:	00008067          	ret

0000000080005f34 <_Z12testSleepingv>:

void testSleeping() {
    80005f34:	fc010113          	addi	sp,sp,-64
    80005f38:	02113c23          	sd	ra,56(sp)
    80005f3c:	02813823          	sd	s0,48(sp)
    80005f40:	02913423          	sd	s1,40(sp)
    80005f44:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005f48:	00a00793          	li	a5,10
    80005f4c:	fcf43823          	sd	a5,-48(s0)
    80005f50:	01400793          	li	a5,20
    80005f54:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f58:	00000493          	li	s1,0
    80005f5c:	02c0006f          	j	80005f88 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005f60:	00349793          	slli	a5,s1,0x3
    80005f64:	fd040613          	addi	a2,s0,-48
    80005f68:	00f60633          	add	a2,a2,a5
    80005f6c:	00000597          	auipc	a1,0x0
    80005f70:	abc58593          	addi	a1,a1,-1348 # 80005a28 <_Z9sleepyRunPv>
    80005f74:	fc040513          	addi	a0,s0,-64
    80005f78:	00f50533          	add	a0,a0,a5
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	314080e7          	jalr	788(ra) # 80002290 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005f84:	0014849b          	addiw	s1,s1,1
    80005f88:	00100793          	li	a5,1
    80005f8c:	fc97dae3          	bge	a5,s1,80005f60 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005f90:	0000a797          	auipc	a5,0xa
    80005f94:	b207c783          	lbu	a5,-1248(a5) # 8000fab0 <finished>
    80005f98:	fe078ce3          	beqz	a5,80005f90 <_Z12testSleepingv+0x5c>
    80005f9c:	0000a797          	auipc	a5,0xa
    80005fa0:	b157c783          	lbu	a5,-1259(a5) # 8000fab1 <finished+0x1>
    80005fa4:	fe0786e3          	beqz	a5,80005f90 <_Z12testSleepingv+0x5c>
}
    80005fa8:	03813083          	ld	ra,56(sp)
    80005fac:	03013403          	ld	s0,48(sp)
    80005fb0:	02813483          	ld	s1,40(sp)
    80005fb4:	04010113          	addi	sp,sp,64
    80005fb8:	00008067          	ret

0000000080005fbc <_Z8userMainv>:

#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005fbc:	ff010113          	addi	sp,sp,-16
    80005fc0:	00113423          	sd	ra,8(sp)
    80005fc4:	00813023          	sd	s0,0(sp)
    80005fc8:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    80005fcc:	00000097          	auipc	ra,0x0
    80005fd0:	f68080e7          	jalr	-152(ra) # 80005f34 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005fd4:	00813083          	ld	ra,8(sp)
    80005fd8:	00013403          	ld	s0,0(sp)
    80005fdc:	01010113          	addi	sp,sp,16
    80005fe0:	00008067          	ret

0000000080005fe4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005fe4:	fe010113          	addi	sp,sp,-32
    80005fe8:	00113c23          	sd	ra,24(sp)
    80005fec:	00813823          	sd	s0,16(sp)
    80005ff0:	00913423          	sd	s1,8(sp)
    80005ff4:	01213023          	sd	s2,0(sp)
    80005ff8:	02010413          	addi	s0,sp,32
    80005ffc:	00050493          	mv	s1,a0
    80006000:	00058913          	mv	s2,a1
    80006004:	0015879b          	addiw	a5,a1,1
    80006008:	0007851b          	sext.w	a0,a5
    8000600c:	00f4a023          	sw	a5,0(s1)
    80006010:	0004a823          	sw	zero,16(s1)
    80006014:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006018:	00251513          	slli	a0,a0,0x2
    8000601c:	ffffc097          	auipc	ra,0xffffc
    80006020:	218080e7          	jalr	536(ra) # 80002234 <_Z9mem_allocm>
    80006024:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006028:	00000593          	li	a1,0
    8000602c:	02048513          	addi	a0,s1,32
    80006030:	ffffc097          	auipc	ra,0xffffc
    80006034:	328080e7          	jalr	808(ra) # 80002358 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006038:	00090593          	mv	a1,s2
    8000603c:	01848513          	addi	a0,s1,24
    80006040:	ffffc097          	auipc	ra,0xffffc
    80006044:	318080e7          	jalr	792(ra) # 80002358 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006048:	00100593          	li	a1,1
    8000604c:	02848513          	addi	a0,s1,40
    80006050:	ffffc097          	auipc	ra,0xffffc
    80006054:	308080e7          	jalr	776(ra) # 80002358 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006058:	00100593          	li	a1,1
    8000605c:	03048513          	addi	a0,s1,48
    80006060:	ffffc097          	auipc	ra,0xffffc
    80006064:	2f8080e7          	jalr	760(ra) # 80002358 <_Z8sem_openPP4_semj>
}
    80006068:	01813083          	ld	ra,24(sp)
    8000606c:	01013403          	ld	s0,16(sp)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	00013903          	ld	s2,0(sp)
    80006078:	02010113          	addi	sp,sp,32
    8000607c:	00008067          	ret

0000000080006080 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006080:	fe010113          	addi	sp,sp,-32
    80006084:	00113c23          	sd	ra,24(sp)
    80006088:	00813823          	sd	s0,16(sp)
    8000608c:	00913423          	sd	s1,8(sp)
    80006090:	01213023          	sd	s2,0(sp)
    80006094:	02010413          	addi	s0,sp,32
    80006098:	00050493          	mv	s1,a0
    8000609c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800060a0:	01853503          	ld	a0,24(a0)
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	318080e7          	jalr	792(ra) # 800023bc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800060ac:	0304b503          	ld	a0,48(s1)
    800060b0:	ffffc097          	auipc	ra,0xffffc
    800060b4:	30c080e7          	jalr	780(ra) # 800023bc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800060b8:	0084b783          	ld	a5,8(s1)
    800060bc:	0144a703          	lw	a4,20(s1)
    800060c0:	00271713          	slli	a4,a4,0x2
    800060c4:	00e787b3          	add	a5,a5,a4
    800060c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800060cc:	0144a783          	lw	a5,20(s1)
    800060d0:	0017879b          	addiw	a5,a5,1
    800060d4:	0004a703          	lw	a4,0(s1)
    800060d8:	02e7e7bb          	remw	a5,a5,a4
    800060dc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800060e0:	0304b503          	ld	a0,48(s1)
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	304080e7          	jalr	772(ra) # 800023e8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800060ec:	0204b503          	ld	a0,32(s1)
    800060f0:	ffffc097          	auipc	ra,0xffffc
    800060f4:	2f8080e7          	jalr	760(ra) # 800023e8 <_Z10sem_signalP4_sem>

}
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	00813483          	ld	s1,8(sp)
    80006104:	00013903          	ld	s2,0(sp)
    80006108:	02010113          	addi	sp,sp,32
    8000610c:	00008067          	ret

0000000080006110 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006110:	fe010113          	addi	sp,sp,-32
    80006114:	00113c23          	sd	ra,24(sp)
    80006118:	00813823          	sd	s0,16(sp)
    8000611c:	00913423          	sd	s1,8(sp)
    80006120:	01213023          	sd	s2,0(sp)
    80006124:	02010413          	addi	s0,sp,32
    80006128:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000612c:	02053503          	ld	a0,32(a0)
    80006130:	ffffc097          	auipc	ra,0xffffc
    80006134:	28c080e7          	jalr	652(ra) # 800023bc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006138:	0284b503          	ld	a0,40(s1)
    8000613c:	ffffc097          	auipc	ra,0xffffc
    80006140:	280080e7          	jalr	640(ra) # 800023bc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006144:	0084b703          	ld	a4,8(s1)
    80006148:	0104a783          	lw	a5,16(s1)
    8000614c:	00279693          	slli	a3,a5,0x2
    80006150:	00d70733          	add	a4,a4,a3
    80006154:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006158:	0017879b          	addiw	a5,a5,1
    8000615c:	0004a703          	lw	a4,0(s1)
    80006160:	02e7e7bb          	remw	a5,a5,a4
    80006164:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006168:	0284b503          	ld	a0,40(s1)
    8000616c:	ffffc097          	auipc	ra,0xffffc
    80006170:	27c080e7          	jalr	636(ra) # 800023e8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006174:	0184b503          	ld	a0,24(s1)
    80006178:	ffffc097          	auipc	ra,0xffffc
    8000617c:	270080e7          	jalr	624(ra) # 800023e8 <_Z10sem_signalP4_sem>

    return ret;
}
    80006180:	00090513          	mv	a0,s2
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00813483          	ld	s1,8(sp)
    80006190:	00013903          	ld	s2,0(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00008067          	ret

000000008000619c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00913423          	sd	s1,8(sp)
    800061ac:	01213023          	sd	s2,0(sp)
    800061b0:	02010413          	addi	s0,sp,32
    800061b4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800061b8:	02853503          	ld	a0,40(a0)
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	200080e7          	jalr	512(ra) # 800023bc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800061c4:	0304b503          	ld	a0,48(s1)
    800061c8:	ffffc097          	auipc	ra,0xffffc
    800061cc:	1f4080e7          	jalr	500(ra) # 800023bc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800061d0:	0144a783          	lw	a5,20(s1)
    800061d4:	0104a903          	lw	s2,16(s1)
    800061d8:	0327ce63          	blt	a5,s2,80006214 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800061dc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800061e0:	0304b503          	ld	a0,48(s1)
    800061e4:	ffffc097          	auipc	ra,0xffffc
    800061e8:	204080e7          	jalr	516(ra) # 800023e8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800061ec:	0284b503          	ld	a0,40(s1)
    800061f0:	ffffc097          	auipc	ra,0xffffc
    800061f4:	1f8080e7          	jalr	504(ra) # 800023e8 <_Z10sem_signalP4_sem>

    return ret;
    800061f8:	00090513          	mv	a0,s2
    800061fc:	01813083          	ld	ra,24(sp)
    80006200:	01013403          	ld	s0,16(sp)
    80006204:	00813483          	ld	s1,8(sp)
    80006208:	00013903          	ld	s2,0(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret
        ret = cap - head + tail;
    80006214:	0004a703          	lw	a4,0(s1)
    80006218:	4127093b          	subw	s2,a4,s2
    8000621c:	00f9093b          	addw	s2,s2,a5
    80006220:	fc1ff06f          	j	800061e0 <_ZN6Buffer6getCntEv+0x44>

0000000080006224 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006224:	fe010113          	addi	sp,sp,-32
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	00813823          	sd	s0,16(sp)
    80006230:	00913423          	sd	s1,8(sp)
    80006234:	02010413          	addi	s0,sp,32
    80006238:	00050493          	mv	s1,a0
    putc('\n');
    8000623c:	00a00513          	li	a0,10
    80006240:	ffffc097          	auipc	ra,0xffffc
    80006244:	2d4080e7          	jalr	724(ra) # 80002514 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006248:	00003517          	auipc	a0,0x3
    8000624c:	19050513          	addi	a0,a0,400 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006250:	fffff097          	auipc	ra,0xfffff
    80006254:	f94080e7          	jalr	-108(ra) # 800051e4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006258:	00048513          	mv	a0,s1
    8000625c:	00000097          	auipc	ra,0x0
    80006260:	f40080e7          	jalr	-192(ra) # 8000619c <_ZN6Buffer6getCntEv>
    80006264:	02a05c63          	blez	a0,8000629c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006268:	0084b783          	ld	a5,8(s1)
    8000626c:	0104a703          	lw	a4,16(s1)
    80006270:	00271713          	slli	a4,a4,0x2
    80006274:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006278:	0007c503          	lbu	a0,0(a5)
    8000627c:	ffffc097          	auipc	ra,0xffffc
    80006280:	298080e7          	jalr	664(ra) # 80002514 <_Z4putcc>
        head = (head + 1) % cap;
    80006284:	0104a783          	lw	a5,16(s1)
    80006288:	0017879b          	addiw	a5,a5,1
    8000628c:	0004a703          	lw	a4,0(s1)
    80006290:	02e7e7bb          	remw	a5,a5,a4
    80006294:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006298:	fc1ff06f          	j	80006258 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000629c:	02100513          	li	a0,33
    800062a0:	ffffc097          	auipc	ra,0xffffc
    800062a4:	274080e7          	jalr	628(ra) # 80002514 <_Z4putcc>
    putc('\n');
    800062a8:	00a00513          	li	a0,10
    800062ac:	ffffc097          	auipc	ra,0xffffc
    800062b0:	268080e7          	jalr	616(ra) # 80002514 <_Z4putcc>
    mem_free(buffer);
    800062b4:	0084b503          	ld	a0,8(s1)
    800062b8:	ffffc097          	auipc	ra,0xffffc
    800062bc:	fac080e7          	jalr	-84(ra) # 80002264 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800062c0:	0204b503          	ld	a0,32(s1)
    800062c4:	ffffc097          	auipc	ra,0xffffc
    800062c8:	0cc080e7          	jalr	204(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800062cc:	0184b503          	ld	a0,24(s1)
    800062d0:	ffffc097          	auipc	ra,0xffffc
    800062d4:	0c0080e7          	jalr	192(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800062d8:	0304b503          	ld	a0,48(s1)
    800062dc:	ffffc097          	auipc	ra,0xffffc
    800062e0:	0b4080e7          	jalr	180(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800062e4:	0284b503          	ld	a0,40(s1)
    800062e8:	ffffc097          	auipc	ra,0xffffc
    800062ec:	0a8080e7          	jalr	168(ra) # 80002390 <_Z9sem_closeP4_sem>
}
    800062f0:	01813083          	ld	ra,24(sp)
    800062f4:	01013403          	ld	s0,16(sp)
    800062f8:	00813483          	ld	s1,8(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <start>:
    80006304:	ff010113          	addi	sp,sp,-16
    80006308:	00813423          	sd	s0,8(sp)
    8000630c:	01010413          	addi	s0,sp,16
    80006310:	300027f3          	csrr	a5,mstatus
    80006314:	ffffe737          	lui	a4,0xffffe
    80006318:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffedadf>
    8000631c:	00e7f7b3          	and	a5,a5,a4
    80006320:	00001737          	lui	a4,0x1
    80006324:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006328:	00e7e7b3          	or	a5,a5,a4
    8000632c:	30079073          	csrw	mstatus,a5
    80006330:	00000797          	auipc	a5,0x0
    80006334:	16078793          	addi	a5,a5,352 # 80006490 <system_main>
    80006338:	34179073          	csrw	mepc,a5
    8000633c:	00000793          	li	a5,0
    80006340:	18079073          	csrw	satp,a5
    80006344:	000107b7          	lui	a5,0x10
    80006348:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000634c:	30279073          	csrw	medeleg,a5
    80006350:	30379073          	csrw	mideleg,a5
    80006354:	104027f3          	csrr	a5,sie
    80006358:	2227e793          	ori	a5,a5,546
    8000635c:	10479073          	csrw	sie,a5
    80006360:	fff00793          	li	a5,-1
    80006364:	00a7d793          	srli	a5,a5,0xa
    80006368:	3b079073          	csrw	pmpaddr0,a5
    8000636c:	00f00793          	li	a5,15
    80006370:	3a079073          	csrw	pmpcfg0,a5
    80006374:	f14027f3          	csrr	a5,mhartid
    80006378:	0200c737          	lui	a4,0x200c
    8000637c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006380:	0007869b          	sext.w	a3,a5
    80006384:	00269713          	slli	a4,a3,0x2
    80006388:	000f4637          	lui	a2,0xf4
    8000638c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006390:	00d70733          	add	a4,a4,a3
    80006394:	0037979b          	slliw	a5,a5,0x3
    80006398:	020046b7          	lui	a3,0x2004
    8000639c:	00d787b3          	add	a5,a5,a3
    800063a0:	00c585b3          	add	a1,a1,a2
    800063a4:	00371693          	slli	a3,a4,0x3
    800063a8:	00009717          	auipc	a4,0x9
    800063ac:	71870713          	addi	a4,a4,1816 # 8000fac0 <timer_scratch>
    800063b0:	00b7b023          	sd	a1,0(a5)
    800063b4:	00d70733          	add	a4,a4,a3
    800063b8:	00f73c23          	sd	a5,24(a4)
    800063bc:	02c73023          	sd	a2,32(a4)
    800063c0:	34071073          	csrw	mscratch,a4
    800063c4:	00000797          	auipc	a5,0x0
    800063c8:	6ec78793          	addi	a5,a5,1772 # 80006ab0 <timervec>
    800063cc:	30579073          	csrw	mtvec,a5
    800063d0:	300027f3          	csrr	a5,mstatus
    800063d4:	0087e793          	ori	a5,a5,8
    800063d8:	30079073          	csrw	mstatus,a5
    800063dc:	304027f3          	csrr	a5,mie
    800063e0:	0807e793          	ori	a5,a5,128
    800063e4:	30479073          	csrw	mie,a5
    800063e8:	f14027f3          	csrr	a5,mhartid
    800063ec:	0007879b          	sext.w	a5,a5
    800063f0:	00078213          	mv	tp,a5
    800063f4:	30200073          	mret
    800063f8:	00813403          	ld	s0,8(sp)
    800063fc:	01010113          	addi	sp,sp,16
    80006400:	00008067          	ret

0000000080006404 <timerinit>:
    80006404:	ff010113          	addi	sp,sp,-16
    80006408:	00813423          	sd	s0,8(sp)
    8000640c:	01010413          	addi	s0,sp,16
    80006410:	f14027f3          	csrr	a5,mhartid
    80006414:	0200c737          	lui	a4,0x200c
    80006418:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000641c:	0007869b          	sext.w	a3,a5
    80006420:	00269713          	slli	a4,a3,0x2
    80006424:	000f4637          	lui	a2,0xf4
    80006428:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000642c:	00d70733          	add	a4,a4,a3
    80006430:	0037979b          	slliw	a5,a5,0x3
    80006434:	020046b7          	lui	a3,0x2004
    80006438:	00d787b3          	add	a5,a5,a3
    8000643c:	00c585b3          	add	a1,a1,a2
    80006440:	00371693          	slli	a3,a4,0x3
    80006444:	00009717          	auipc	a4,0x9
    80006448:	67c70713          	addi	a4,a4,1660 # 8000fac0 <timer_scratch>
    8000644c:	00b7b023          	sd	a1,0(a5)
    80006450:	00d70733          	add	a4,a4,a3
    80006454:	00f73c23          	sd	a5,24(a4)
    80006458:	02c73023          	sd	a2,32(a4)
    8000645c:	34071073          	csrw	mscratch,a4
    80006460:	00000797          	auipc	a5,0x0
    80006464:	65078793          	addi	a5,a5,1616 # 80006ab0 <timervec>
    80006468:	30579073          	csrw	mtvec,a5
    8000646c:	300027f3          	csrr	a5,mstatus
    80006470:	0087e793          	ori	a5,a5,8
    80006474:	30079073          	csrw	mstatus,a5
    80006478:	304027f3          	csrr	a5,mie
    8000647c:	0807e793          	ori	a5,a5,128
    80006480:	30479073          	csrw	mie,a5
    80006484:	00813403          	ld	s0,8(sp)
    80006488:	01010113          	addi	sp,sp,16
    8000648c:	00008067          	ret

0000000080006490 <system_main>:
    80006490:	fe010113          	addi	sp,sp,-32
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	00113c23          	sd	ra,24(sp)
    800064a0:	02010413          	addi	s0,sp,32
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	0c4080e7          	jalr	196(ra) # 80006568 <cpuid>
    800064ac:	00005497          	auipc	s1,0x5
    800064b0:	50448493          	addi	s1,s1,1284 # 8000b9b0 <started>
    800064b4:	02050263          	beqz	a0,800064d8 <system_main+0x48>
    800064b8:	0004a783          	lw	a5,0(s1)
    800064bc:	0007879b          	sext.w	a5,a5
    800064c0:	fe078ce3          	beqz	a5,800064b8 <system_main+0x28>
    800064c4:	0ff0000f          	fence
    800064c8:	00003517          	auipc	a0,0x3
    800064cc:	06050513          	addi	a0,a0,96 # 80009528 <CONSOLE_STATUS+0x518>
    800064d0:	00001097          	auipc	ra,0x1
    800064d4:	a7c080e7          	jalr	-1412(ra) # 80006f4c <panic>
    800064d8:	00001097          	auipc	ra,0x1
    800064dc:	9d0080e7          	jalr	-1584(ra) # 80006ea8 <consoleinit>
    800064e0:	00001097          	auipc	ra,0x1
    800064e4:	15c080e7          	jalr	348(ra) # 8000763c <printfinit>
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	12050513          	addi	a0,a0,288 # 80009608 <CONSOLE_STATUS+0x5f8>
    800064f0:	00001097          	auipc	ra,0x1
    800064f4:	ab8080e7          	jalr	-1352(ra) # 80006fa8 <__printf>
    800064f8:	00003517          	auipc	a0,0x3
    800064fc:	00050513          	mv	a0,a0
    80006500:	00001097          	auipc	ra,0x1
    80006504:	aa8080e7          	jalr	-1368(ra) # 80006fa8 <__printf>
    80006508:	00003517          	auipc	a0,0x3
    8000650c:	10050513          	addi	a0,a0,256 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006510:	00001097          	auipc	ra,0x1
    80006514:	a98080e7          	jalr	-1384(ra) # 80006fa8 <__printf>
    80006518:	00001097          	auipc	ra,0x1
    8000651c:	4b0080e7          	jalr	1200(ra) # 800079c8 <kinit>
    80006520:	00000097          	auipc	ra,0x0
    80006524:	148080e7          	jalr	328(ra) # 80006668 <trapinit>
    80006528:	00000097          	auipc	ra,0x0
    8000652c:	16c080e7          	jalr	364(ra) # 80006694 <trapinithart>
    80006530:	00000097          	auipc	ra,0x0
    80006534:	5c0080e7          	jalr	1472(ra) # 80006af0 <plicinit>
    80006538:	00000097          	auipc	ra,0x0
    8000653c:	5e0080e7          	jalr	1504(ra) # 80006b18 <plicinithart>
    80006540:	00000097          	auipc	ra,0x0
    80006544:	078080e7          	jalr	120(ra) # 800065b8 <userinit>
    80006548:	0ff0000f          	fence
    8000654c:	00100793          	li	a5,1
    80006550:	00003517          	auipc	a0,0x3
    80006554:	fc050513          	addi	a0,a0,-64 # 80009510 <CONSOLE_STATUS+0x500>
    80006558:	00f4a023          	sw	a5,0(s1)
    8000655c:	00001097          	auipc	ra,0x1
    80006560:	a4c080e7          	jalr	-1460(ra) # 80006fa8 <__printf>
    80006564:	0000006f          	j	80006564 <system_main+0xd4>

0000000080006568 <cpuid>:
    80006568:	ff010113          	addi	sp,sp,-16
    8000656c:	00813423          	sd	s0,8(sp)
    80006570:	01010413          	addi	s0,sp,16
    80006574:	00020513          	mv	a0,tp
    80006578:	00813403          	ld	s0,8(sp)
    8000657c:	0005051b          	sext.w	a0,a0
    80006580:	01010113          	addi	sp,sp,16
    80006584:	00008067          	ret

0000000080006588 <mycpu>:
    80006588:	ff010113          	addi	sp,sp,-16
    8000658c:	00813423          	sd	s0,8(sp)
    80006590:	01010413          	addi	s0,sp,16
    80006594:	00020793          	mv	a5,tp
    80006598:	00813403          	ld	s0,8(sp)
    8000659c:	0007879b          	sext.w	a5,a5
    800065a0:	00779793          	slli	a5,a5,0x7
    800065a4:	0000a517          	auipc	a0,0xa
    800065a8:	54c50513          	addi	a0,a0,1356 # 80010af0 <cpus>
    800065ac:	00f50533          	add	a0,a0,a5
    800065b0:	01010113          	addi	sp,sp,16
    800065b4:	00008067          	ret

00000000800065b8 <userinit>:
    800065b8:	ff010113          	addi	sp,sp,-16
    800065bc:	00813423          	sd	s0,8(sp)
    800065c0:	01010413          	addi	s0,sp,16
    800065c4:	00813403          	ld	s0,8(sp)
    800065c8:	01010113          	addi	sp,sp,16
    800065cc:	ffffd317          	auipc	t1,0xffffd
    800065d0:	39030067          	jr	912(t1) # 8000395c <main>

00000000800065d4 <either_copyout>:
    800065d4:	ff010113          	addi	sp,sp,-16
    800065d8:	00813023          	sd	s0,0(sp)
    800065dc:	00113423          	sd	ra,8(sp)
    800065e0:	01010413          	addi	s0,sp,16
    800065e4:	02051663          	bnez	a0,80006610 <either_copyout+0x3c>
    800065e8:	00058513          	mv	a0,a1
    800065ec:	00060593          	mv	a1,a2
    800065f0:	0006861b          	sext.w	a2,a3
    800065f4:	00002097          	auipc	ra,0x2
    800065f8:	c60080e7          	jalr	-928(ra) # 80008254 <__memmove>
    800065fc:	00813083          	ld	ra,8(sp)
    80006600:	00013403          	ld	s0,0(sp)
    80006604:	00000513          	li	a0,0
    80006608:	01010113          	addi	sp,sp,16
    8000660c:	00008067          	ret
    80006610:	00003517          	auipc	a0,0x3
    80006614:	f4050513          	addi	a0,a0,-192 # 80009550 <CONSOLE_STATUS+0x540>
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	934080e7          	jalr	-1740(ra) # 80006f4c <panic>

0000000080006620 <either_copyin>:
    80006620:	ff010113          	addi	sp,sp,-16
    80006624:	00813023          	sd	s0,0(sp)
    80006628:	00113423          	sd	ra,8(sp)
    8000662c:	01010413          	addi	s0,sp,16
    80006630:	02059463          	bnez	a1,80006658 <either_copyin+0x38>
    80006634:	00060593          	mv	a1,a2
    80006638:	0006861b          	sext.w	a2,a3
    8000663c:	00002097          	auipc	ra,0x2
    80006640:	c18080e7          	jalr	-1000(ra) # 80008254 <__memmove>
    80006644:	00813083          	ld	ra,8(sp)
    80006648:	00013403          	ld	s0,0(sp)
    8000664c:	00000513          	li	a0,0
    80006650:	01010113          	addi	sp,sp,16
    80006654:	00008067          	ret
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	f2050513          	addi	a0,a0,-224 # 80009578 <CONSOLE_STATUS+0x568>
    80006660:	00001097          	auipc	ra,0x1
    80006664:	8ec080e7          	jalr	-1812(ra) # 80006f4c <panic>

0000000080006668 <trapinit>:
    80006668:	ff010113          	addi	sp,sp,-16
    8000666c:	00813423          	sd	s0,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	00813403          	ld	s0,8(sp)
    80006678:	00003597          	auipc	a1,0x3
    8000667c:	f2858593          	addi	a1,a1,-216 # 800095a0 <CONSOLE_STATUS+0x590>
    80006680:	0000a517          	auipc	a0,0xa
    80006684:	4f050513          	addi	a0,a0,1264 # 80010b70 <tickslock>
    80006688:	01010113          	addi	sp,sp,16
    8000668c:	00001317          	auipc	t1,0x1
    80006690:	5cc30067          	jr	1484(t1) # 80007c58 <initlock>

0000000080006694 <trapinithart>:
    80006694:	ff010113          	addi	sp,sp,-16
    80006698:	00813423          	sd	s0,8(sp)
    8000669c:	01010413          	addi	s0,sp,16
    800066a0:	00000797          	auipc	a5,0x0
    800066a4:	30078793          	addi	a5,a5,768 # 800069a0 <kernelvec>
    800066a8:	10579073          	csrw	stvec,a5
    800066ac:	00813403          	ld	s0,8(sp)
    800066b0:	01010113          	addi	sp,sp,16
    800066b4:	00008067          	ret

00000000800066b8 <usertrap>:
    800066b8:	ff010113          	addi	sp,sp,-16
    800066bc:	00813423          	sd	s0,8(sp)
    800066c0:	01010413          	addi	s0,sp,16
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	01010113          	addi	sp,sp,16
    800066cc:	00008067          	ret

00000000800066d0 <usertrapret>:
    800066d0:	ff010113          	addi	sp,sp,-16
    800066d4:	00813423          	sd	s0,8(sp)
    800066d8:	01010413          	addi	s0,sp,16
    800066dc:	00813403          	ld	s0,8(sp)
    800066e0:	01010113          	addi	sp,sp,16
    800066e4:	00008067          	ret

00000000800066e8 <kerneltrap>:
    800066e8:	fe010113          	addi	sp,sp,-32
    800066ec:	00813823          	sd	s0,16(sp)
    800066f0:	00113c23          	sd	ra,24(sp)
    800066f4:	00913423          	sd	s1,8(sp)
    800066f8:	02010413          	addi	s0,sp,32
    800066fc:	142025f3          	csrr	a1,scause
    80006700:	100027f3          	csrr	a5,sstatus
    80006704:	0027f793          	andi	a5,a5,2
    80006708:	10079c63          	bnez	a5,80006820 <kerneltrap+0x138>
    8000670c:	142027f3          	csrr	a5,scause
    80006710:	0207ce63          	bltz	a5,8000674c <kerneltrap+0x64>
    80006714:	00003517          	auipc	a0,0x3
    80006718:	ed450513          	addi	a0,a0,-300 # 800095e8 <CONSOLE_STATUS+0x5d8>
    8000671c:	00001097          	auipc	ra,0x1
    80006720:	88c080e7          	jalr	-1908(ra) # 80006fa8 <__printf>
    80006724:	141025f3          	csrr	a1,sepc
    80006728:	14302673          	csrr	a2,stval
    8000672c:	00003517          	auipc	a0,0x3
    80006730:	ecc50513          	addi	a0,a0,-308 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006734:	00001097          	auipc	ra,0x1
    80006738:	874080e7          	jalr	-1932(ra) # 80006fa8 <__printf>
    8000673c:	00003517          	auipc	a0,0x3
    80006740:	ed450513          	addi	a0,a0,-300 # 80009610 <CONSOLE_STATUS+0x600>
    80006744:	00001097          	auipc	ra,0x1
    80006748:	808080e7          	jalr	-2040(ra) # 80006f4c <panic>
    8000674c:	0ff7f713          	andi	a4,a5,255
    80006750:	00900693          	li	a3,9
    80006754:	04d70063          	beq	a4,a3,80006794 <kerneltrap+0xac>
    80006758:	fff00713          	li	a4,-1
    8000675c:	03f71713          	slli	a4,a4,0x3f
    80006760:	00170713          	addi	a4,a4,1
    80006764:	fae798e3          	bne	a5,a4,80006714 <kerneltrap+0x2c>
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	e00080e7          	jalr	-512(ra) # 80006568 <cpuid>
    80006770:	06050663          	beqz	a0,800067dc <kerneltrap+0xf4>
    80006774:	144027f3          	csrr	a5,sip
    80006778:	ffd7f793          	andi	a5,a5,-3
    8000677c:	14479073          	csrw	sip,a5
    80006780:	01813083          	ld	ra,24(sp)
    80006784:	01013403          	ld	s0,16(sp)
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	02010113          	addi	sp,sp,32
    80006790:	00008067          	ret
    80006794:	00000097          	auipc	ra,0x0
    80006798:	3d0080e7          	jalr	976(ra) # 80006b64 <plic_claim>
    8000679c:	00a00793          	li	a5,10
    800067a0:	00050493          	mv	s1,a0
    800067a4:	06f50863          	beq	a0,a5,80006814 <kerneltrap+0x12c>
    800067a8:	fc050ce3          	beqz	a0,80006780 <kerneltrap+0x98>
    800067ac:	00050593          	mv	a1,a0
    800067b0:	00003517          	auipc	a0,0x3
    800067b4:	e1850513          	addi	a0,a0,-488 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800067b8:	00000097          	auipc	ra,0x0
    800067bc:	7f0080e7          	jalr	2032(ra) # 80006fa8 <__printf>
    800067c0:	01013403          	ld	s0,16(sp)
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	00048513          	mv	a0,s1
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	02010113          	addi	sp,sp,32
    800067d4:	00000317          	auipc	t1,0x0
    800067d8:	3c830067          	jr	968(t1) # 80006b9c <plic_complete>
    800067dc:	0000a517          	auipc	a0,0xa
    800067e0:	39450513          	addi	a0,a0,916 # 80010b70 <tickslock>
    800067e4:	00001097          	auipc	ra,0x1
    800067e8:	498080e7          	jalr	1176(ra) # 80007c7c <acquire>
    800067ec:	00005717          	auipc	a4,0x5
    800067f0:	1c870713          	addi	a4,a4,456 # 8000b9b4 <ticks>
    800067f4:	00072783          	lw	a5,0(a4)
    800067f8:	0000a517          	auipc	a0,0xa
    800067fc:	37850513          	addi	a0,a0,888 # 80010b70 <tickslock>
    80006800:	0017879b          	addiw	a5,a5,1
    80006804:	00f72023          	sw	a5,0(a4)
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	540080e7          	jalr	1344(ra) # 80007d48 <release>
    80006810:	f65ff06f          	j	80006774 <kerneltrap+0x8c>
    80006814:	00001097          	auipc	ra,0x1
    80006818:	09c080e7          	jalr	156(ra) # 800078b0 <uartintr>
    8000681c:	fa5ff06f          	j	800067c0 <kerneltrap+0xd8>
    80006820:	00003517          	auipc	a0,0x3
    80006824:	d8850513          	addi	a0,a0,-632 # 800095a8 <CONSOLE_STATUS+0x598>
    80006828:	00000097          	auipc	ra,0x0
    8000682c:	724080e7          	jalr	1828(ra) # 80006f4c <panic>

0000000080006830 <clockintr>:
    80006830:	fe010113          	addi	sp,sp,-32
    80006834:	00813823          	sd	s0,16(sp)
    80006838:	00913423          	sd	s1,8(sp)
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	02010413          	addi	s0,sp,32
    80006844:	0000a497          	auipc	s1,0xa
    80006848:	32c48493          	addi	s1,s1,812 # 80010b70 <tickslock>
    8000684c:	00048513          	mv	a0,s1
    80006850:	00001097          	auipc	ra,0x1
    80006854:	42c080e7          	jalr	1068(ra) # 80007c7c <acquire>
    80006858:	00005717          	auipc	a4,0x5
    8000685c:	15c70713          	addi	a4,a4,348 # 8000b9b4 <ticks>
    80006860:	00072783          	lw	a5,0(a4)
    80006864:	01013403          	ld	s0,16(sp)
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	00048513          	mv	a0,s1
    80006870:	0017879b          	addiw	a5,a5,1
    80006874:	00813483          	ld	s1,8(sp)
    80006878:	00f72023          	sw	a5,0(a4)
    8000687c:	02010113          	addi	sp,sp,32
    80006880:	00001317          	auipc	t1,0x1
    80006884:	4c830067          	jr	1224(t1) # 80007d48 <release>

0000000080006888 <devintr>:
    80006888:	142027f3          	csrr	a5,scause
    8000688c:	00000513          	li	a0,0
    80006890:	0007c463          	bltz	a5,80006898 <devintr+0x10>
    80006894:	00008067          	ret
    80006898:	fe010113          	addi	sp,sp,-32
    8000689c:	00813823          	sd	s0,16(sp)
    800068a0:	00113c23          	sd	ra,24(sp)
    800068a4:	00913423          	sd	s1,8(sp)
    800068a8:	02010413          	addi	s0,sp,32
    800068ac:	0ff7f713          	andi	a4,a5,255
    800068b0:	00900693          	li	a3,9
    800068b4:	04d70c63          	beq	a4,a3,8000690c <devintr+0x84>
    800068b8:	fff00713          	li	a4,-1
    800068bc:	03f71713          	slli	a4,a4,0x3f
    800068c0:	00170713          	addi	a4,a4,1
    800068c4:	00e78c63          	beq	a5,a4,800068dc <devintr+0x54>
    800068c8:	01813083          	ld	ra,24(sp)
    800068cc:	01013403          	ld	s0,16(sp)
    800068d0:	00813483          	ld	s1,8(sp)
    800068d4:	02010113          	addi	sp,sp,32
    800068d8:	00008067          	ret
    800068dc:	00000097          	auipc	ra,0x0
    800068e0:	c8c080e7          	jalr	-884(ra) # 80006568 <cpuid>
    800068e4:	06050663          	beqz	a0,80006950 <devintr+0xc8>
    800068e8:	144027f3          	csrr	a5,sip
    800068ec:	ffd7f793          	andi	a5,a5,-3
    800068f0:	14479073          	csrw	sip,a5
    800068f4:	01813083          	ld	ra,24(sp)
    800068f8:	01013403          	ld	s0,16(sp)
    800068fc:	00813483          	ld	s1,8(sp)
    80006900:	00200513          	li	a0,2
    80006904:	02010113          	addi	sp,sp,32
    80006908:	00008067          	ret
    8000690c:	00000097          	auipc	ra,0x0
    80006910:	258080e7          	jalr	600(ra) # 80006b64 <plic_claim>
    80006914:	00a00793          	li	a5,10
    80006918:	00050493          	mv	s1,a0
    8000691c:	06f50663          	beq	a0,a5,80006988 <devintr+0x100>
    80006920:	00100513          	li	a0,1
    80006924:	fa0482e3          	beqz	s1,800068c8 <devintr+0x40>
    80006928:	00048593          	mv	a1,s1
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	c9c50513          	addi	a0,a0,-868 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006934:	00000097          	auipc	ra,0x0
    80006938:	674080e7          	jalr	1652(ra) # 80006fa8 <__printf>
    8000693c:	00048513          	mv	a0,s1
    80006940:	00000097          	auipc	ra,0x0
    80006944:	25c080e7          	jalr	604(ra) # 80006b9c <plic_complete>
    80006948:	00100513          	li	a0,1
    8000694c:	f7dff06f          	j	800068c8 <devintr+0x40>
    80006950:	0000a517          	auipc	a0,0xa
    80006954:	22050513          	addi	a0,a0,544 # 80010b70 <tickslock>
    80006958:	00001097          	auipc	ra,0x1
    8000695c:	324080e7          	jalr	804(ra) # 80007c7c <acquire>
    80006960:	00005717          	auipc	a4,0x5
    80006964:	05470713          	addi	a4,a4,84 # 8000b9b4 <ticks>
    80006968:	00072783          	lw	a5,0(a4)
    8000696c:	0000a517          	auipc	a0,0xa
    80006970:	20450513          	addi	a0,a0,516 # 80010b70 <tickslock>
    80006974:	0017879b          	addiw	a5,a5,1
    80006978:	00f72023          	sw	a5,0(a4)
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	3cc080e7          	jalr	972(ra) # 80007d48 <release>
    80006984:	f65ff06f          	j	800068e8 <devintr+0x60>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	f28080e7          	jalr	-216(ra) # 800078b0 <uartintr>
    80006990:	fadff06f          	j	8000693c <devintr+0xb4>
	...

00000000800069a0 <kernelvec>:
    800069a0:	f0010113          	addi	sp,sp,-256
    800069a4:	00113023          	sd	ra,0(sp)
    800069a8:	00213423          	sd	sp,8(sp)
    800069ac:	00313823          	sd	gp,16(sp)
    800069b0:	00413c23          	sd	tp,24(sp)
    800069b4:	02513023          	sd	t0,32(sp)
    800069b8:	02613423          	sd	t1,40(sp)
    800069bc:	02713823          	sd	t2,48(sp)
    800069c0:	02813c23          	sd	s0,56(sp)
    800069c4:	04913023          	sd	s1,64(sp)
    800069c8:	04a13423          	sd	a0,72(sp)
    800069cc:	04b13823          	sd	a1,80(sp)
    800069d0:	04c13c23          	sd	a2,88(sp)
    800069d4:	06d13023          	sd	a3,96(sp)
    800069d8:	06e13423          	sd	a4,104(sp)
    800069dc:	06f13823          	sd	a5,112(sp)
    800069e0:	07013c23          	sd	a6,120(sp)
    800069e4:	09113023          	sd	a7,128(sp)
    800069e8:	09213423          	sd	s2,136(sp)
    800069ec:	09313823          	sd	s3,144(sp)
    800069f0:	09413c23          	sd	s4,152(sp)
    800069f4:	0b513023          	sd	s5,160(sp)
    800069f8:	0b613423          	sd	s6,168(sp)
    800069fc:	0b713823          	sd	s7,176(sp)
    80006a00:	0b813c23          	sd	s8,184(sp)
    80006a04:	0d913023          	sd	s9,192(sp)
    80006a08:	0da13423          	sd	s10,200(sp)
    80006a0c:	0db13823          	sd	s11,208(sp)
    80006a10:	0dc13c23          	sd	t3,216(sp)
    80006a14:	0fd13023          	sd	t4,224(sp)
    80006a18:	0fe13423          	sd	t5,232(sp)
    80006a1c:	0ff13823          	sd	t6,240(sp)
    80006a20:	cc9ff0ef          	jal	ra,800066e8 <kerneltrap>
    80006a24:	00013083          	ld	ra,0(sp)
    80006a28:	00813103          	ld	sp,8(sp)
    80006a2c:	01013183          	ld	gp,16(sp)
    80006a30:	02013283          	ld	t0,32(sp)
    80006a34:	02813303          	ld	t1,40(sp)
    80006a38:	03013383          	ld	t2,48(sp)
    80006a3c:	03813403          	ld	s0,56(sp)
    80006a40:	04013483          	ld	s1,64(sp)
    80006a44:	04813503          	ld	a0,72(sp)
    80006a48:	05013583          	ld	a1,80(sp)
    80006a4c:	05813603          	ld	a2,88(sp)
    80006a50:	06013683          	ld	a3,96(sp)
    80006a54:	06813703          	ld	a4,104(sp)
    80006a58:	07013783          	ld	a5,112(sp)
    80006a5c:	07813803          	ld	a6,120(sp)
    80006a60:	08013883          	ld	a7,128(sp)
    80006a64:	08813903          	ld	s2,136(sp)
    80006a68:	09013983          	ld	s3,144(sp)
    80006a6c:	09813a03          	ld	s4,152(sp)
    80006a70:	0a013a83          	ld	s5,160(sp)
    80006a74:	0a813b03          	ld	s6,168(sp)
    80006a78:	0b013b83          	ld	s7,176(sp)
    80006a7c:	0b813c03          	ld	s8,184(sp)
    80006a80:	0c013c83          	ld	s9,192(sp)
    80006a84:	0c813d03          	ld	s10,200(sp)
    80006a88:	0d013d83          	ld	s11,208(sp)
    80006a8c:	0d813e03          	ld	t3,216(sp)
    80006a90:	0e013e83          	ld	t4,224(sp)
    80006a94:	0e813f03          	ld	t5,232(sp)
    80006a98:	0f013f83          	ld	t6,240(sp)
    80006a9c:	10010113          	addi	sp,sp,256
    80006aa0:	10200073          	sret
    80006aa4:	00000013          	nop
    80006aa8:	00000013          	nop
    80006aac:	00000013          	nop

0000000080006ab0 <timervec>:
    80006ab0:	34051573          	csrrw	a0,mscratch,a0
    80006ab4:	00b53023          	sd	a1,0(a0)
    80006ab8:	00c53423          	sd	a2,8(a0)
    80006abc:	00d53823          	sd	a3,16(a0)
    80006ac0:	01853583          	ld	a1,24(a0)
    80006ac4:	02053603          	ld	a2,32(a0)
    80006ac8:	0005b683          	ld	a3,0(a1)
    80006acc:	00c686b3          	add	a3,a3,a2
    80006ad0:	00d5b023          	sd	a3,0(a1)
    80006ad4:	00200593          	li	a1,2
    80006ad8:	14459073          	csrw	sip,a1
    80006adc:	01053683          	ld	a3,16(a0)
    80006ae0:	00853603          	ld	a2,8(a0)
    80006ae4:	00053583          	ld	a1,0(a0)
    80006ae8:	34051573          	csrrw	a0,mscratch,a0
    80006aec:	30200073          	mret

0000000080006af0 <plicinit>:
    80006af0:	ff010113          	addi	sp,sp,-16
    80006af4:	00813423          	sd	s0,8(sp)
    80006af8:	01010413          	addi	s0,sp,16
    80006afc:	00813403          	ld	s0,8(sp)
    80006b00:	0c0007b7          	lui	a5,0xc000
    80006b04:	00100713          	li	a4,1
    80006b08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006b0c:	00e7a223          	sw	a4,4(a5)
    80006b10:	01010113          	addi	sp,sp,16
    80006b14:	00008067          	ret

0000000080006b18 <plicinithart>:
    80006b18:	ff010113          	addi	sp,sp,-16
    80006b1c:	00813023          	sd	s0,0(sp)
    80006b20:	00113423          	sd	ra,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00000097          	auipc	ra,0x0
    80006b2c:	a40080e7          	jalr	-1472(ra) # 80006568 <cpuid>
    80006b30:	0085171b          	slliw	a4,a0,0x8
    80006b34:	0c0027b7          	lui	a5,0xc002
    80006b38:	00e787b3          	add	a5,a5,a4
    80006b3c:	40200713          	li	a4,1026
    80006b40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006b44:	00813083          	ld	ra,8(sp)
    80006b48:	00013403          	ld	s0,0(sp)
    80006b4c:	00d5151b          	slliw	a0,a0,0xd
    80006b50:	0c2017b7          	lui	a5,0xc201
    80006b54:	00a78533          	add	a0,a5,a0
    80006b58:	00052023          	sw	zero,0(a0)
    80006b5c:	01010113          	addi	sp,sp,16
    80006b60:	00008067          	ret

0000000080006b64 <plic_claim>:
    80006b64:	ff010113          	addi	sp,sp,-16
    80006b68:	00813023          	sd	s0,0(sp)
    80006b6c:	00113423          	sd	ra,8(sp)
    80006b70:	01010413          	addi	s0,sp,16
    80006b74:	00000097          	auipc	ra,0x0
    80006b78:	9f4080e7          	jalr	-1548(ra) # 80006568 <cpuid>
    80006b7c:	00813083          	ld	ra,8(sp)
    80006b80:	00013403          	ld	s0,0(sp)
    80006b84:	00d5151b          	slliw	a0,a0,0xd
    80006b88:	0c2017b7          	lui	a5,0xc201
    80006b8c:	00a78533          	add	a0,a5,a0
    80006b90:	00452503          	lw	a0,4(a0)
    80006b94:	01010113          	addi	sp,sp,16
    80006b98:	00008067          	ret

0000000080006b9c <plic_complete>:
    80006b9c:	fe010113          	addi	sp,sp,-32
    80006ba0:	00813823          	sd	s0,16(sp)
    80006ba4:	00913423          	sd	s1,8(sp)
    80006ba8:	00113c23          	sd	ra,24(sp)
    80006bac:	02010413          	addi	s0,sp,32
    80006bb0:	00050493          	mv	s1,a0
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	9b4080e7          	jalr	-1612(ra) # 80006568 <cpuid>
    80006bbc:	01813083          	ld	ra,24(sp)
    80006bc0:	01013403          	ld	s0,16(sp)
    80006bc4:	00d5179b          	slliw	a5,a0,0xd
    80006bc8:	0c201737          	lui	a4,0xc201
    80006bcc:	00f707b3          	add	a5,a4,a5
    80006bd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	02010113          	addi	sp,sp,32
    80006bdc:	00008067          	ret

0000000080006be0 <consolewrite>:
    80006be0:	fb010113          	addi	sp,sp,-80
    80006be4:	04813023          	sd	s0,64(sp)
    80006be8:	04113423          	sd	ra,72(sp)
    80006bec:	02913c23          	sd	s1,56(sp)
    80006bf0:	03213823          	sd	s2,48(sp)
    80006bf4:	03313423          	sd	s3,40(sp)
    80006bf8:	03413023          	sd	s4,32(sp)
    80006bfc:	01513c23          	sd	s5,24(sp)
    80006c00:	05010413          	addi	s0,sp,80
    80006c04:	06c05c63          	blez	a2,80006c7c <consolewrite+0x9c>
    80006c08:	00060993          	mv	s3,a2
    80006c0c:	00050a13          	mv	s4,a0
    80006c10:	00058493          	mv	s1,a1
    80006c14:	00000913          	li	s2,0
    80006c18:	fff00a93          	li	s5,-1
    80006c1c:	01c0006f          	j	80006c38 <consolewrite+0x58>
    80006c20:	fbf44503          	lbu	a0,-65(s0)
    80006c24:	0019091b          	addiw	s2,s2,1
    80006c28:	00148493          	addi	s1,s1,1
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	a9c080e7          	jalr	-1380(ra) # 800076c8 <uartputc>
    80006c34:	03298063          	beq	s3,s2,80006c54 <consolewrite+0x74>
    80006c38:	00048613          	mv	a2,s1
    80006c3c:	00100693          	li	a3,1
    80006c40:	000a0593          	mv	a1,s4
    80006c44:	fbf40513          	addi	a0,s0,-65
    80006c48:	00000097          	auipc	ra,0x0
    80006c4c:	9d8080e7          	jalr	-1576(ra) # 80006620 <either_copyin>
    80006c50:	fd5518e3          	bne	a0,s5,80006c20 <consolewrite+0x40>
    80006c54:	04813083          	ld	ra,72(sp)
    80006c58:	04013403          	ld	s0,64(sp)
    80006c5c:	03813483          	ld	s1,56(sp)
    80006c60:	02813983          	ld	s3,40(sp)
    80006c64:	02013a03          	ld	s4,32(sp)
    80006c68:	01813a83          	ld	s5,24(sp)
    80006c6c:	00090513          	mv	a0,s2
    80006c70:	03013903          	ld	s2,48(sp)
    80006c74:	05010113          	addi	sp,sp,80
    80006c78:	00008067          	ret
    80006c7c:	00000913          	li	s2,0
    80006c80:	fd5ff06f          	j	80006c54 <consolewrite+0x74>

0000000080006c84 <consoleread>:
    80006c84:	f9010113          	addi	sp,sp,-112
    80006c88:	06813023          	sd	s0,96(sp)
    80006c8c:	04913c23          	sd	s1,88(sp)
    80006c90:	05213823          	sd	s2,80(sp)
    80006c94:	05313423          	sd	s3,72(sp)
    80006c98:	05413023          	sd	s4,64(sp)
    80006c9c:	03513c23          	sd	s5,56(sp)
    80006ca0:	03613823          	sd	s6,48(sp)
    80006ca4:	03713423          	sd	s7,40(sp)
    80006ca8:	03813023          	sd	s8,32(sp)
    80006cac:	06113423          	sd	ra,104(sp)
    80006cb0:	01913c23          	sd	s9,24(sp)
    80006cb4:	07010413          	addi	s0,sp,112
    80006cb8:	00060b93          	mv	s7,a2
    80006cbc:	00050913          	mv	s2,a0
    80006cc0:	00058c13          	mv	s8,a1
    80006cc4:	00060b1b          	sext.w	s6,a2
    80006cc8:	0000a497          	auipc	s1,0xa
    80006ccc:	ed048493          	addi	s1,s1,-304 # 80010b98 <cons>
    80006cd0:	00400993          	li	s3,4
    80006cd4:	fff00a13          	li	s4,-1
    80006cd8:	00a00a93          	li	s5,10
    80006cdc:	05705e63          	blez	s7,80006d38 <consoleread+0xb4>
    80006ce0:	09c4a703          	lw	a4,156(s1)
    80006ce4:	0984a783          	lw	a5,152(s1)
    80006ce8:	0007071b          	sext.w	a4,a4
    80006cec:	08e78463          	beq	a5,a4,80006d74 <consoleread+0xf0>
    80006cf0:	07f7f713          	andi	a4,a5,127
    80006cf4:	00e48733          	add	a4,s1,a4
    80006cf8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006cfc:	0017869b          	addiw	a3,a5,1
    80006d00:	08d4ac23          	sw	a3,152(s1)
    80006d04:	00070c9b          	sext.w	s9,a4
    80006d08:	0b370663          	beq	a4,s3,80006db4 <consoleread+0x130>
    80006d0c:	00100693          	li	a3,1
    80006d10:	f9f40613          	addi	a2,s0,-97
    80006d14:	000c0593          	mv	a1,s8
    80006d18:	00090513          	mv	a0,s2
    80006d1c:	f8e40fa3          	sb	a4,-97(s0)
    80006d20:	00000097          	auipc	ra,0x0
    80006d24:	8b4080e7          	jalr	-1868(ra) # 800065d4 <either_copyout>
    80006d28:	01450863          	beq	a0,s4,80006d38 <consoleread+0xb4>
    80006d2c:	001c0c13          	addi	s8,s8,1
    80006d30:	fffb8b9b          	addiw	s7,s7,-1
    80006d34:	fb5c94e3          	bne	s9,s5,80006cdc <consoleread+0x58>
    80006d38:	000b851b          	sext.w	a0,s7
    80006d3c:	06813083          	ld	ra,104(sp)
    80006d40:	06013403          	ld	s0,96(sp)
    80006d44:	05813483          	ld	s1,88(sp)
    80006d48:	05013903          	ld	s2,80(sp)
    80006d4c:	04813983          	ld	s3,72(sp)
    80006d50:	04013a03          	ld	s4,64(sp)
    80006d54:	03813a83          	ld	s5,56(sp)
    80006d58:	02813b83          	ld	s7,40(sp)
    80006d5c:	02013c03          	ld	s8,32(sp)
    80006d60:	01813c83          	ld	s9,24(sp)
    80006d64:	40ab053b          	subw	a0,s6,a0
    80006d68:	03013b03          	ld	s6,48(sp)
    80006d6c:	07010113          	addi	sp,sp,112
    80006d70:	00008067          	ret
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	1d8080e7          	jalr	472(ra) # 80007f4c <push_on>
    80006d7c:	0984a703          	lw	a4,152(s1)
    80006d80:	09c4a783          	lw	a5,156(s1)
    80006d84:	0007879b          	sext.w	a5,a5
    80006d88:	fef70ce3          	beq	a4,a5,80006d80 <consoleread+0xfc>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	234080e7          	jalr	564(ra) # 80007fc0 <pop_on>
    80006d94:	0984a783          	lw	a5,152(s1)
    80006d98:	07f7f713          	andi	a4,a5,127
    80006d9c:	00e48733          	add	a4,s1,a4
    80006da0:	01874703          	lbu	a4,24(a4)
    80006da4:	0017869b          	addiw	a3,a5,1
    80006da8:	08d4ac23          	sw	a3,152(s1)
    80006dac:	00070c9b          	sext.w	s9,a4
    80006db0:	f5371ee3          	bne	a4,s3,80006d0c <consoleread+0x88>
    80006db4:	000b851b          	sext.w	a0,s7
    80006db8:	f96bf2e3          	bgeu	s7,s6,80006d3c <consoleread+0xb8>
    80006dbc:	08f4ac23          	sw	a5,152(s1)
    80006dc0:	f7dff06f          	j	80006d3c <consoleread+0xb8>

0000000080006dc4 <consputc>:
    80006dc4:	10000793          	li	a5,256
    80006dc8:	00f50663          	beq	a0,a5,80006dd4 <consputc+0x10>
    80006dcc:	00001317          	auipc	t1,0x1
    80006dd0:	9f430067          	jr	-1548(t1) # 800077c0 <uartputc_sync>
    80006dd4:	ff010113          	addi	sp,sp,-16
    80006dd8:	00113423          	sd	ra,8(sp)
    80006ddc:	00813023          	sd	s0,0(sp)
    80006de0:	01010413          	addi	s0,sp,16
    80006de4:	00800513          	li	a0,8
    80006de8:	00001097          	auipc	ra,0x1
    80006dec:	9d8080e7          	jalr	-1576(ra) # 800077c0 <uartputc_sync>
    80006df0:	02000513          	li	a0,32
    80006df4:	00001097          	auipc	ra,0x1
    80006df8:	9cc080e7          	jalr	-1588(ra) # 800077c0 <uartputc_sync>
    80006dfc:	00013403          	ld	s0,0(sp)
    80006e00:	00813083          	ld	ra,8(sp)
    80006e04:	00800513          	li	a0,8
    80006e08:	01010113          	addi	sp,sp,16
    80006e0c:	00001317          	auipc	t1,0x1
    80006e10:	9b430067          	jr	-1612(t1) # 800077c0 <uartputc_sync>

0000000080006e14 <consoleintr>:
    80006e14:	fe010113          	addi	sp,sp,-32
    80006e18:	00813823          	sd	s0,16(sp)
    80006e1c:	00913423          	sd	s1,8(sp)
    80006e20:	01213023          	sd	s2,0(sp)
    80006e24:	00113c23          	sd	ra,24(sp)
    80006e28:	02010413          	addi	s0,sp,32
    80006e2c:	0000a917          	auipc	s2,0xa
    80006e30:	d6c90913          	addi	s2,s2,-660 # 80010b98 <cons>
    80006e34:	00050493          	mv	s1,a0
    80006e38:	00090513          	mv	a0,s2
    80006e3c:	00001097          	auipc	ra,0x1
    80006e40:	e40080e7          	jalr	-448(ra) # 80007c7c <acquire>
    80006e44:	02048c63          	beqz	s1,80006e7c <consoleintr+0x68>
    80006e48:	0a092783          	lw	a5,160(s2)
    80006e4c:	09892703          	lw	a4,152(s2)
    80006e50:	07f00693          	li	a3,127
    80006e54:	40e7873b          	subw	a4,a5,a4
    80006e58:	02e6e263          	bltu	a3,a4,80006e7c <consoleintr+0x68>
    80006e5c:	00d00713          	li	a4,13
    80006e60:	04e48063          	beq	s1,a4,80006ea0 <consoleintr+0x8c>
    80006e64:	07f7f713          	andi	a4,a5,127
    80006e68:	00e90733          	add	a4,s2,a4
    80006e6c:	0017879b          	addiw	a5,a5,1
    80006e70:	0af92023          	sw	a5,160(s2)
    80006e74:	00970c23          	sb	s1,24(a4)
    80006e78:	08f92e23          	sw	a5,156(s2)
    80006e7c:	01013403          	ld	s0,16(sp)
    80006e80:	01813083          	ld	ra,24(sp)
    80006e84:	00813483          	ld	s1,8(sp)
    80006e88:	00013903          	ld	s2,0(sp)
    80006e8c:	0000a517          	auipc	a0,0xa
    80006e90:	d0c50513          	addi	a0,a0,-756 # 80010b98 <cons>
    80006e94:	02010113          	addi	sp,sp,32
    80006e98:	00001317          	auipc	t1,0x1
    80006e9c:	eb030067          	jr	-336(t1) # 80007d48 <release>
    80006ea0:	00a00493          	li	s1,10
    80006ea4:	fc1ff06f          	j	80006e64 <consoleintr+0x50>

0000000080006ea8 <consoleinit>:
    80006ea8:	fe010113          	addi	sp,sp,-32
    80006eac:	00113c23          	sd	ra,24(sp)
    80006eb0:	00813823          	sd	s0,16(sp)
    80006eb4:	00913423          	sd	s1,8(sp)
    80006eb8:	02010413          	addi	s0,sp,32
    80006ebc:	0000a497          	auipc	s1,0xa
    80006ec0:	cdc48493          	addi	s1,s1,-804 # 80010b98 <cons>
    80006ec4:	00048513          	mv	a0,s1
    80006ec8:	00002597          	auipc	a1,0x2
    80006ecc:	75858593          	addi	a1,a1,1880 # 80009620 <CONSOLE_STATUS+0x610>
    80006ed0:	00001097          	auipc	ra,0x1
    80006ed4:	d88080e7          	jalr	-632(ra) # 80007c58 <initlock>
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	7ac080e7          	jalr	1964(ra) # 80007684 <uartinit>
    80006ee0:	01813083          	ld	ra,24(sp)
    80006ee4:	01013403          	ld	s0,16(sp)
    80006ee8:	00000797          	auipc	a5,0x0
    80006eec:	d9c78793          	addi	a5,a5,-612 # 80006c84 <consoleread>
    80006ef0:	0af4bc23          	sd	a5,184(s1)
    80006ef4:	00000797          	auipc	a5,0x0
    80006ef8:	cec78793          	addi	a5,a5,-788 # 80006be0 <consolewrite>
    80006efc:	0cf4b023          	sd	a5,192(s1)
    80006f00:	00813483          	ld	s1,8(sp)
    80006f04:	02010113          	addi	sp,sp,32
    80006f08:	00008067          	ret

0000000080006f0c <console_read>:
    80006f0c:	ff010113          	addi	sp,sp,-16
    80006f10:	00813423          	sd	s0,8(sp)
    80006f14:	01010413          	addi	s0,sp,16
    80006f18:	00813403          	ld	s0,8(sp)
    80006f1c:	0000a317          	auipc	t1,0xa
    80006f20:	d3433303          	ld	t1,-716(t1) # 80010c50 <devsw+0x10>
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	00030067          	jr	t1

0000000080006f2c <console_write>:
    80006f2c:	ff010113          	addi	sp,sp,-16
    80006f30:	00813423          	sd	s0,8(sp)
    80006f34:	01010413          	addi	s0,sp,16
    80006f38:	00813403          	ld	s0,8(sp)
    80006f3c:	0000a317          	auipc	t1,0xa
    80006f40:	d1c33303          	ld	t1,-740(t1) # 80010c58 <devsw+0x18>
    80006f44:	01010113          	addi	sp,sp,16
    80006f48:	00030067          	jr	t1

0000000080006f4c <panic>:
    80006f4c:	fe010113          	addi	sp,sp,-32
    80006f50:	00113c23          	sd	ra,24(sp)
    80006f54:	00813823          	sd	s0,16(sp)
    80006f58:	00913423          	sd	s1,8(sp)
    80006f5c:	02010413          	addi	s0,sp,32
    80006f60:	00050493          	mv	s1,a0
    80006f64:	00002517          	auipc	a0,0x2
    80006f68:	6c450513          	addi	a0,a0,1732 # 80009628 <CONSOLE_STATUS+0x618>
    80006f6c:	0000a797          	auipc	a5,0xa
    80006f70:	d807a623          	sw	zero,-628(a5) # 80010cf8 <pr+0x18>
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	034080e7          	jalr	52(ra) # 80006fa8 <__printf>
    80006f7c:	00048513          	mv	a0,s1
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	028080e7          	jalr	40(ra) # 80006fa8 <__printf>
    80006f88:	00002517          	auipc	a0,0x2
    80006f8c:	68050513          	addi	a0,a0,1664 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	018080e7          	jalr	24(ra) # 80006fa8 <__printf>
    80006f98:	00100793          	li	a5,1
    80006f9c:	00005717          	auipc	a4,0x5
    80006fa0:	a0f72e23          	sw	a5,-1508(a4) # 8000b9b8 <panicked>
    80006fa4:	0000006f          	j	80006fa4 <panic+0x58>

0000000080006fa8 <__printf>:
    80006fa8:	f3010113          	addi	sp,sp,-208
    80006fac:	08813023          	sd	s0,128(sp)
    80006fb0:	07313423          	sd	s3,104(sp)
    80006fb4:	09010413          	addi	s0,sp,144
    80006fb8:	05813023          	sd	s8,64(sp)
    80006fbc:	08113423          	sd	ra,136(sp)
    80006fc0:	06913c23          	sd	s1,120(sp)
    80006fc4:	07213823          	sd	s2,112(sp)
    80006fc8:	07413023          	sd	s4,96(sp)
    80006fcc:	05513c23          	sd	s5,88(sp)
    80006fd0:	05613823          	sd	s6,80(sp)
    80006fd4:	05713423          	sd	s7,72(sp)
    80006fd8:	03913c23          	sd	s9,56(sp)
    80006fdc:	03a13823          	sd	s10,48(sp)
    80006fe0:	03b13423          	sd	s11,40(sp)
    80006fe4:	0000a317          	auipc	t1,0xa
    80006fe8:	cfc30313          	addi	t1,t1,-772 # 80010ce0 <pr>
    80006fec:	01832c03          	lw	s8,24(t1)
    80006ff0:	00b43423          	sd	a1,8(s0)
    80006ff4:	00c43823          	sd	a2,16(s0)
    80006ff8:	00d43c23          	sd	a3,24(s0)
    80006ffc:	02e43023          	sd	a4,32(s0)
    80007000:	02f43423          	sd	a5,40(s0)
    80007004:	03043823          	sd	a6,48(s0)
    80007008:	03143c23          	sd	a7,56(s0)
    8000700c:	00050993          	mv	s3,a0
    80007010:	4a0c1663          	bnez	s8,800074bc <__printf+0x514>
    80007014:	60098c63          	beqz	s3,8000762c <__printf+0x684>
    80007018:	0009c503          	lbu	a0,0(s3)
    8000701c:	00840793          	addi	a5,s0,8
    80007020:	f6f43c23          	sd	a5,-136(s0)
    80007024:	00000493          	li	s1,0
    80007028:	22050063          	beqz	a0,80007248 <__printf+0x2a0>
    8000702c:	00002a37          	lui	s4,0x2
    80007030:	00018ab7          	lui	s5,0x18
    80007034:	000f4b37          	lui	s6,0xf4
    80007038:	00989bb7          	lui	s7,0x989
    8000703c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007040:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007044:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007048:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000704c:	00148c9b          	addiw	s9,s1,1
    80007050:	02500793          	li	a5,37
    80007054:	01998933          	add	s2,s3,s9
    80007058:	38f51263          	bne	a0,a5,800073dc <__printf+0x434>
    8000705c:	00094783          	lbu	a5,0(s2)
    80007060:	00078c9b          	sext.w	s9,a5
    80007064:	1e078263          	beqz	a5,80007248 <__printf+0x2a0>
    80007068:	0024849b          	addiw	s1,s1,2
    8000706c:	07000713          	li	a4,112
    80007070:	00998933          	add	s2,s3,s1
    80007074:	38e78a63          	beq	a5,a4,80007408 <__printf+0x460>
    80007078:	20f76863          	bltu	a4,a5,80007288 <__printf+0x2e0>
    8000707c:	42a78863          	beq	a5,a0,800074ac <__printf+0x504>
    80007080:	06400713          	li	a4,100
    80007084:	40e79663          	bne	a5,a4,80007490 <__printf+0x4e8>
    80007088:	f7843783          	ld	a5,-136(s0)
    8000708c:	0007a603          	lw	a2,0(a5)
    80007090:	00878793          	addi	a5,a5,8
    80007094:	f6f43c23          	sd	a5,-136(s0)
    80007098:	42064a63          	bltz	a2,800074cc <__printf+0x524>
    8000709c:	00a00713          	li	a4,10
    800070a0:	02e677bb          	remuw	a5,a2,a4
    800070a4:	00002d97          	auipc	s11,0x2
    800070a8:	5acd8d93          	addi	s11,s11,1452 # 80009650 <digits>
    800070ac:	00900593          	li	a1,9
    800070b0:	0006051b          	sext.w	a0,a2
    800070b4:	00000c93          	li	s9,0
    800070b8:	02079793          	slli	a5,a5,0x20
    800070bc:	0207d793          	srli	a5,a5,0x20
    800070c0:	00fd87b3          	add	a5,s11,a5
    800070c4:	0007c783          	lbu	a5,0(a5)
    800070c8:	02e656bb          	divuw	a3,a2,a4
    800070cc:	f8f40023          	sb	a5,-128(s0)
    800070d0:	14c5d863          	bge	a1,a2,80007220 <__printf+0x278>
    800070d4:	06300593          	li	a1,99
    800070d8:	00100c93          	li	s9,1
    800070dc:	02e6f7bb          	remuw	a5,a3,a4
    800070e0:	02079793          	slli	a5,a5,0x20
    800070e4:	0207d793          	srli	a5,a5,0x20
    800070e8:	00fd87b3          	add	a5,s11,a5
    800070ec:	0007c783          	lbu	a5,0(a5)
    800070f0:	02e6d73b          	divuw	a4,a3,a4
    800070f4:	f8f400a3          	sb	a5,-127(s0)
    800070f8:	12a5f463          	bgeu	a1,a0,80007220 <__printf+0x278>
    800070fc:	00a00693          	li	a3,10
    80007100:	00900593          	li	a1,9
    80007104:	02d777bb          	remuw	a5,a4,a3
    80007108:	02079793          	slli	a5,a5,0x20
    8000710c:	0207d793          	srli	a5,a5,0x20
    80007110:	00fd87b3          	add	a5,s11,a5
    80007114:	0007c503          	lbu	a0,0(a5)
    80007118:	02d757bb          	divuw	a5,a4,a3
    8000711c:	f8a40123          	sb	a0,-126(s0)
    80007120:	48e5f263          	bgeu	a1,a4,800075a4 <__printf+0x5fc>
    80007124:	06300513          	li	a0,99
    80007128:	02d7f5bb          	remuw	a1,a5,a3
    8000712c:	02059593          	slli	a1,a1,0x20
    80007130:	0205d593          	srli	a1,a1,0x20
    80007134:	00bd85b3          	add	a1,s11,a1
    80007138:	0005c583          	lbu	a1,0(a1)
    8000713c:	02d7d7bb          	divuw	a5,a5,a3
    80007140:	f8b401a3          	sb	a1,-125(s0)
    80007144:	48e57263          	bgeu	a0,a4,800075c8 <__printf+0x620>
    80007148:	3e700513          	li	a0,999
    8000714c:	02d7f5bb          	remuw	a1,a5,a3
    80007150:	02059593          	slli	a1,a1,0x20
    80007154:	0205d593          	srli	a1,a1,0x20
    80007158:	00bd85b3          	add	a1,s11,a1
    8000715c:	0005c583          	lbu	a1,0(a1)
    80007160:	02d7d7bb          	divuw	a5,a5,a3
    80007164:	f8b40223          	sb	a1,-124(s0)
    80007168:	46e57663          	bgeu	a0,a4,800075d4 <__printf+0x62c>
    8000716c:	02d7f5bb          	remuw	a1,a5,a3
    80007170:	02059593          	slli	a1,a1,0x20
    80007174:	0205d593          	srli	a1,a1,0x20
    80007178:	00bd85b3          	add	a1,s11,a1
    8000717c:	0005c583          	lbu	a1,0(a1)
    80007180:	02d7d7bb          	divuw	a5,a5,a3
    80007184:	f8b402a3          	sb	a1,-123(s0)
    80007188:	46ea7863          	bgeu	s4,a4,800075f8 <__printf+0x650>
    8000718c:	02d7f5bb          	remuw	a1,a5,a3
    80007190:	02059593          	slli	a1,a1,0x20
    80007194:	0205d593          	srli	a1,a1,0x20
    80007198:	00bd85b3          	add	a1,s11,a1
    8000719c:	0005c583          	lbu	a1,0(a1)
    800071a0:	02d7d7bb          	divuw	a5,a5,a3
    800071a4:	f8b40323          	sb	a1,-122(s0)
    800071a8:	3eeaf863          	bgeu	s5,a4,80007598 <__printf+0x5f0>
    800071ac:	02d7f5bb          	remuw	a1,a5,a3
    800071b0:	02059593          	slli	a1,a1,0x20
    800071b4:	0205d593          	srli	a1,a1,0x20
    800071b8:	00bd85b3          	add	a1,s11,a1
    800071bc:	0005c583          	lbu	a1,0(a1)
    800071c0:	02d7d7bb          	divuw	a5,a5,a3
    800071c4:	f8b403a3          	sb	a1,-121(s0)
    800071c8:	42eb7e63          	bgeu	s6,a4,80007604 <__printf+0x65c>
    800071cc:	02d7f5bb          	remuw	a1,a5,a3
    800071d0:	02059593          	slli	a1,a1,0x20
    800071d4:	0205d593          	srli	a1,a1,0x20
    800071d8:	00bd85b3          	add	a1,s11,a1
    800071dc:	0005c583          	lbu	a1,0(a1)
    800071e0:	02d7d7bb          	divuw	a5,a5,a3
    800071e4:	f8b40423          	sb	a1,-120(s0)
    800071e8:	42ebfc63          	bgeu	s7,a4,80007620 <__printf+0x678>
    800071ec:	02079793          	slli	a5,a5,0x20
    800071f0:	0207d793          	srli	a5,a5,0x20
    800071f4:	00fd8db3          	add	s11,s11,a5
    800071f8:	000dc703          	lbu	a4,0(s11)
    800071fc:	00a00793          	li	a5,10
    80007200:	00900c93          	li	s9,9
    80007204:	f8e404a3          	sb	a4,-119(s0)
    80007208:	00065c63          	bgez	a2,80007220 <__printf+0x278>
    8000720c:	f9040713          	addi	a4,s0,-112
    80007210:	00f70733          	add	a4,a4,a5
    80007214:	02d00693          	li	a3,45
    80007218:	fed70823          	sb	a3,-16(a4)
    8000721c:	00078c93          	mv	s9,a5
    80007220:	f8040793          	addi	a5,s0,-128
    80007224:	01978cb3          	add	s9,a5,s9
    80007228:	f7f40d13          	addi	s10,s0,-129
    8000722c:	000cc503          	lbu	a0,0(s9)
    80007230:	fffc8c93          	addi	s9,s9,-1
    80007234:	00000097          	auipc	ra,0x0
    80007238:	b90080e7          	jalr	-1136(ra) # 80006dc4 <consputc>
    8000723c:	ffac98e3          	bne	s9,s10,8000722c <__printf+0x284>
    80007240:	00094503          	lbu	a0,0(s2)
    80007244:	e00514e3          	bnez	a0,8000704c <__printf+0xa4>
    80007248:	1a0c1663          	bnez	s8,800073f4 <__printf+0x44c>
    8000724c:	08813083          	ld	ra,136(sp)
    80007250:	08013403          	ld	s0,128(sp)
    80007254:	07813483          	ld	s1,120(sp)
    80007258:	07013903          	ld	s2,112(sp)
    8000725c:	06813983          	ld	s3,104(sp)
    80007260:	06013a03          	ld	s4,96(sp)
    80007264:	05813a83          	ld	s5,88(sp)
    80007268:	05013b03          	ld	s6,80(sp)
    8000726c:	04813b83          	ld	s7,72(sp)
    80007270:	04013c03          	ld	s8,64(sp)
    80007274:	03813c83          	ld	s9,56(sp)
    80007278:	03013d03          	ld	s10,48(sp)
    8000727c:	02813d83          	ld	s11,40(sp)
    80007280:	0d010113          	addi	sp,sp,208
    80007284:	00008067          	ret
    80007288:	07300713          	li	a4,115
    8000728c:	1ce78a63          	beq	a5,a4,80007460 <__printf+0x4b8>
    80007290:	07800713          	li	a4,120
    80007294:	1ee79e63          	bne	a5,a4,80007490 <__printf+0x4e8>
    80007298:	f7843783          	ld	a5,-136(s0)
    8000729c:	0007a703          	lw	a4,0(a5)
    800072a0:	00878793          	addi	a5,a5,8
    800072a4:	f6f43c23          	sd	a5,-136(s0)
    800072a8:	28074263          	bltz	a4,8000752c <__printf+0x584>
    800072ac:	00002d97          	auipc	s11,0x2
    800072b0:	3a4d8d93          	addi	s11,s11,932 # 80009650 <digits>
    800072b4:	00f77793          	andi	a5,a4,15
    800072b8:	00fd87b3          	add	a5,s11,a5
    800072bc:	0007c683          	lbu	a3,0(a5)
    800072c0:	00f00613          	li	a2,15
    800072c4:	0007079b          	sext.w	a5,a4
    800072c8:	f8d40023          	sb	a3,-128(s0)
    800072cc:	0047559b          	srliw	a1,a4,0x4
    800072d0:	0047569b          	srliw	a3,a4,0x4
    800072d4:	00000c93          	li	s9,0
    800072d8:	0ee65063          	bge	a2,a4,800073b8 <__printf+0x410>
    800072dc:	00f6f693          	andi	a3,a3,15
    800072e0:	00dd86b3          	add	a3,s11,a3
    800072e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800072e8:	0087d79b          	srliw	a5,a5,0x8
    800072ec:	00100c93          	li	s9,1
    800072f0:	f8d400a3          	sb	a3,-127(s0)
    800072f4:	0cb67263          	bgeu	a2,a1,800073b8 <__printf+0x410>
    800072f8:	00f7f693          	andi	a3,a5,15
    800072fc:	00dd86b3          	add	a3,s11,a3
    80007300:	0006c583          	lbu	a1,0(a3)
    80007304:	00f00613          	li	a2,15
    80007308:	0047d69b          	srliw	a3,a5,0x4
    8000730c:	f8b40123          	sb	a1,-126(s0)
    80007310:	0047d593          	srli	a1,a5,0x4
    80007314:	28f67e63          	bgeu	a2,a5,800075b0 <__printf+0x608>
    80007318:	00f6f693          	andi	a3,a3,15
    8000731c:	00dd86b3          	add	a3,s11,a3
    80007320:	0006c503          	lbu	a0,0(a3)
    80007324:	0087d813          	srli	a6,a5,0x8
    80007328:	0087d69b          	srliw	a3,a5,0x8
    8000732c:	f8a401a3          	sb	a0,-125(s0)
    80007330:	28b67663          	bgeu	a2,a1,800075bc <__printf+0x614>
    80007334:	00f6f693          	andi	a3,a3,15
    80007338:	00dd86b3          	add	a3,s11,a3
    8000733c:	0006c583          	lbu	a1,0(a3)
    80007340:	00c7d513          	srli	a0,a5,0xc
    80007344:	00c7d69b          	srliw	a3,a5,0xc
    80007348:	f8b40223          	sb	a1,-124(s0)
    8000734c:	29067a63          	bgeu	a2,a6,800075e0 <__printf+0x638>
    80007350:	00f6f693          	andi	a3,a3,15
    80007354:	00dd86b3          	add	a3,s11,a3
    80007358:	0006c583          	lbu	a1,0(a3)
    8000735c:	0107d813          	srli	a6,a5,0x10
    80007360:	0107d69b          	srliw	a3,a5,0x10
    80007364:	f8b402a3          	sb	a1,-123(s0)
    80007368:	28a67263          	bgeu	a2,a0,800075ec <__printf+0x644>
    8000736c:	00f6f693          	andi	a3,a3,15
    80007370:	00dd86b3          	add	a3,s11,a3
    80007374:	0006c683          	lbu	a3,0(a3)
    80007378:	0147d79b          	srliw	a5,a5,0x14
    8000737c:	f8d40323          	sb	a3,-122(s0)
    80007380:	21067663          	bgeu	a2,a6,8000758c <__printf+0x5e4>
    80007384:	02079793          	slli	a5,a5,0x20
    80007388:	0207d793          	srli	a5,a5,0x20
    8000738c:	00fd8db3          	add	s11,s11,a5
    80007390:	000dc683          	lbu	a3,0(s11)
    80007394:	00800793          	li	a5,8
    80007398:	00700c93          	li	s9,7
    8000739c:	f8d403a3          	sb	a3,-121(s0)
    800073a0:	00075c63          	bgez	a4,800073b8 <__printf+0x410>
    800073a4:	f9040713          	addi	a4,s0,-112
    800073a8:	00f70733          	add	a4,a4,a5
    800073ac:	02d00693          	li	a3,45
    800073b0:	fed70823          	sb	a3,-16(a4)
    800073b4:	00078c93          	mv	s9,a5
    800073b8:	f8040793          	addi	a5,s0,-128
    800073bc:	01978cb3          	add	s9,a5,s9
    800073c0:	f7f40d13          	addi	s10,s0,-129
    800073c4:	000cc503          	lbu	a0,0(s9)
    800073c8:	fffc8c93          	addi	s9,s9,-1
    800073cc:	00000097          	auipc	ra,0x0
    800073d0:	9f8080e7          	jalr	-1544(ra) # 80006dc4 <consputc>
    800073d4:	ff9d18e3          	bne	s10,s9,800073c4 <__printf+0x41c>
    800073d8:	0100006f          	j	800073e8 <__printf+0x440>
    800073dc:	00000097          	auipc	ra,0x0
    800073e0:	9e8080e7          	jalr	-1560(ra) # 80006dc4 <consputc>
    800073e4:	000c8493          	mv	s1,s9
    800073e8:	00094503          	lbu	a0,0(s2)
    800073ec:	c60510e3          	bnez	a0,8000704c <__printf+0xa4>
    800073f0:	e40c0ee3          	beqz	s8,8000724c <__printf+0x2a4>
    800073f4:	0000a517          	auipc	a0,0xa
    800073f8:	8ec50513          	addi	a0,a0,-1812 # 80010ce0 <pr>
    800073fc:	00001097          	auipc	ra,0x1
    80007400:	94c080e7          	jalr	-1716(ra) # 80007d48 <release>
    80007404:	e49ff06f          	j	8000724c <__printf+0x2a4>
    80007408:	f7843783          	ld	a5,-136(s0)
    8000740c:	03000513          	li	a0,48
    80007410:	01000d13          	li	s10,16
    80007414:	00878713          	addi	a4,a5,8
    80007418:	0007bc83          	ld	s9,0(a5)
    8000741c:	f6e43c23          	sd	a4,-136(s0)
    80007420:	00000097          	auipc	ra,0x0
    80007424:	9a4080e7          	jalr	-1628(ra) # 80006dc4 <consputc>
    80007428:	07800513          	li	a0,120
    8000742c:	00000097          	auipc	ra,0x0
    80007430:	998080e7          	jalr	-1640(ra) # 80006dc4 <consputc>
    80007434:	00002d97          	auipc	s11,0x2
    80007438:	21cd8d93          	addi	s11,s11,540 # 80009650 <digits>
    8000743c:	03ccd793          	srli	a5,s9,0x3c
    80007440:	00fd87b3          	add	a5,s11,a5
    80007444:	0007c503          	lbu	a0,0(a5)
    80007448:	fffd0d1b          	addiw	s10,s10,-1
    8000744c:	004c9c93          	slli	s9,s9,0x4
    80007450:	00000097          	auipc	ra,0x0
    80007454:	974080e7          	jalr	-1676(ra) # 80006dc4 <consputc>
    80007458:	fe0d12e3          	bnez	s10,8000743c <__printf+0x494>
    8000745c:	f8dff06f          	j	800073e8 <__printf+0x440>
    80007460:	f7843783          	ld	a5,-136(s0)
    80007464:	0007bc83          	ld	s9,0(a5)
    80007468:	00878793          	addi	a5,a5,8
    8000746c:	f6f43c23          	sd	a5,-136(s0)
    80007470:	000c9a63          	bnez	s9,80007484 <__printf+0x4dc>
    80007474:	1080006f          	j	8000757c <__printf+0x5d4>
    80007478:	001c8c93          	addi	s9,s9,1
    8000747c:	00000097          	auipc	ra,0x0
    80007480:	948080e7          	jalr	-1720(ra) # 80006dc4 <consputc>
    80007484:	000cc503          	lbu	a0,0(s9)
    80007488:	fe0518e3          	bnez	a0,80007478 <__printf+0x4d0>
    8000748c:	f5dff06f          	j	800073e8 <__printf+0x440>
    80007490:	02500513          	li	a0,37
    80007494:	00000097          	auipc	ra,0x0
    80007498:	930080e7          	jalr	-1744(ra) # 80006dc4 <consputc>
    8000749c:	000c8513          	mv	a0,s9
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	924080e7          	jalr	-1756(ra) # 80006dc4 <consputc>
    800074a8:	f41ff06f          	j	800073e8 <__printf+0x440>
    800074ac:	02500513          	li	a0,37
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	914080e7          	jalr	-1772(ra) # 80006dc4 <consputc>
    800074b8:	f31ff06f          	j	800073e8 <__printf+0x440>
    800074bc:	00030513          	mv	a0,t1
    800074c0:	00000097          	auipc	ra,0x0
    800074c4:	7bc080e7          	jalr	1980(ra) # 80007c7c <acquire>
    800074c8:	b4dff06f          	j	80007014 <__printf+0x6c>
    800074cc:	40c0053b          	negw	a0,a2
    800074d0:	00a00713          	li	a4,10
    800074d4:	02e576bb          	remuw	a3,a0,a4
    800074d8:	00002d97          	auipc	s11,0x2
    800074dc:	178d8d93          	addi	s11,s11,376 # 80009650 <digits>
    800074e0:	ff700593          	li	a1,-9
    800074e4:	02069693          	slli	a3,a3,0x20
    800074e8:	0206d693          	srli	a3,a3,0x20
    800074ec:	00dd86b3          	add	a3,s11,a3
    800074f0:	0006c683          	lbu	a3,0(a3)
    800074f4:	02e557bb          	divuw	a5,a0,a4
    800074f8:	f8d40023          	sb	a3,-128(s0)
    800074fc:	10b65e63          	bge	a2,a1,80007618 <__printf+0x670>
    80007500:	06300593          	li	a1,99
    80007504:	02e7f6bb          	remuw	a3,a5,a4
    80007508:	02069693          	slli	a3,a3,0x20
    8000750c:	0206d693          	srli	a3,a3,0x20
    80007510:	00dd86b3          	add	a3,s11,a3
    80007514:	0006c683          	lbu	a3,0(a3)
    80007518:	02e7d73b          	divuw	a4,a5,a4
    8000751c:	00200793          	li	a5,2
    80007520:	f8d400a3          	sb	a3,-127(s0)
    80007524:	bca5ece3          	bltu	a1,a0,800070fc <__printf+0x154>
    80007528:	ce5ff06f          	j	8000720c <__printf+0x264>
    8000752c:	40e007bb          	negw	a5,a4
    80007530:	00002d97          	auipc	s11,0x2
    80007534:	120d8d93          	addi	s11,s11,288 # 80009650 <digits>
    80007538:	00f7f693          	andi	a3,a5,15
    8000753c:	00dd86b3          	add	a3,s11,a3
    80007540:	0006c583          	lbu	a1,0(a3)
    80007544:	ff100613          	li	a2,-15
    80007548:	0047d69b          	srliw	a3,a5,0x4
    8000754c:	f8b40023          	sb	a1,-128(s0)
    80007550:	0047d59b          	srliw	a1,a5,0x4
    80007554:	0ac75e63          	bge	a4,a2,80007610 <__printf+0x668>
    80007558:	00f6f693          	andi	a3,a3,15
    8000755c:	00dd86b3          	add	a3,s11,a3
    80007560:	0006c603          	lbu	a2,0(a3)
    80007564:	00f00693          	li	a3,15
    80007568:	0087d79b          	srliw	a5,a5,0x8
    8000756c:	f8c400a3          	sb	a2,-127(s0)
    80007570:	d8b6e4e3          	bltu	a3,a1,800072f8 <__printf+0x350>
    80007574:	00200793          	li	a5,2
    80007578:	e2dff06f          	j	800073a4 <__printf+0x3fc>
    8000757c:	00002c97          	auipc	s9,0x2
    80007580:	0b4c8c93          	addi	s9,s9,180 # 80009630 <CONSOLE_STATUS+0x620>
    80007584:	02800513          	li	a0,40
    80007588:	ef1ff06f          	j	80007478 <__printf+0x4d0>
    8000758c:	00700793          	li	a5,7
    80007590:	00600c93          	li	s9,6
    80007594:	e0dff06f          	j	800073a0 <__printf+0x3f8>
    80007598:	00700793          	li	a5,7
    8000759c:	00600c93          	li	s9,6
    800075a0:	c69ff06f          	j	80007208 <__printf+0x260>
    800075a4:	00300793          	li	a5,3
    800075a8:	00200c93          	li	s9,2
    800075ac:	c5dff06f          	j	80007208 <__printf+0x260>
    800075b0:	00300793          	li	a5,3
    800075b4:	00200c93          	li	s9,2
    800075b8:	de9ff06f          	j	800073a0 <__printf+0x3f8>
    800075bc:	00400793          	li	a5,4
    800075c0:	00300c93          	li	s9,3
    800075c4:	dddff06f          	j	800073a0 <__printf+0x3f8>
    800075c8:	00400793          	li	a5,4
    800075cc:	00300c93          	li	s9,3
    800075d0:	c39ff06f          	j	80007208 <__printf+0x260>
    800075d4:	00500793          	li	a5,5
    800075d8:	00400c93          	li	s9,4
    800075dc:	c2dff06f          	j	80007208 <__printf+0x260>
    800075e0:	00500793          	li	a5,5
    800075e4:	00400c93          	li	s9,4
    800075e8:	db9ff06f          	j	800073a0 <__printf+0x3f8>
    800075ec:	00600793          	li	a5,6
    800075f0:	00500c93          	li	s9,5
    800075f4:	dadff06f          	j	800073a0 <__printf+0x3f8>
    800075f8:	00600793          	li	a5,6
    800075fc:	00500c93          	li	s9,5
    80007600:	c09ff06f          	j	80007208 <__printf+0x260>
    80007604:	00800793          	li	a5,8
    80007608:	00700c93          	li	s9,7
    8000760c:	bfdff06f          	j	80007208 <__printf+0x260>
    80007610:	00100793          	li	a5,1
    80007614:	d91ff06f          	j	800073a4 <__printf+0x3fc>
    80007618:	00100793          	li	a5,1
    8000761c:	bf1ff06f          	j	8000720c <__printf+0x264>
    80007620:	00900793          	li	a5,9
    80007624:	00800c93          	li	s9,8
    80007628:	be1ff06f          	j	80007208 <__printf+0x260>
    8000762c:	00002517          	auipc	a0,0x2
    80007630:	00c50513          	addi	a0,a0,12 # 80009638 <CONSOLE_STATUS+0x628>
    80007634:	00000097          	auipc	ra,0x0
    80007638:	918080e7          	jalr	-1768(ra) # 80006f4c <panic>

000000008000763c <printfinit>:
    8000763c:	fe010113          	addi	sp,sp,-32
    80007640:	00813823          	sd	s0,16(sp)
    80007644:	00913423          	sd	s1,8(sp)
    80007648:	00113c23          	sd	ra,24(sp)
    8000764c:	02010413          	addi	s0,sp,32
    80007650:	00009497          	auipc	s1,0x9
    80007654:	69048493          	addi	s1,s1,1680 # 80010ce0 <pr>
    80007658:	00048513          	mv	a0,s1
    8000765c:	00002597          	auipc	a1,0x2
    80007660:	fec58593          	addi	a1,a1,-20 # 80009648 <CONSOLE_STATUS+0x638>
    80007664:	00000097          	auipc	ra,0x0
    80007668:	5f4080e7          	jalr	1524(ra) # 80007c58 <initlock>
    8000766c:	01813083          	ld	ra,24(sp)
    80007670:	01013403          	ld	s0,16(sp)
    80007674:	0004ac23          	sw	zero,24(s1)
    80007678:	00813483          	ld	s1,8(sp)
    8000767c:	02010113          	addi	sp,sp,32
    80007680:	00008067          	ret

0000000080007684 <uartinit>:
    80007684:	ff010113          	addi	sp,sp,-16
    80007688:	00813423          	sd	s0,8(sp)
    8000768c:	01010413          	addi	s0,sp,16
    80007690:	100007b7          	lui	a5,0x10000
    80007694:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007698:	f8000713          	li	a4,-128
    8000769c:	00e781a3          	sb	a4,3(a5)
    800076a0:	00300713          	li	a4,3
    800076a4:	00e78023          	sb	a4,0(a5)
    800076a8:	000780a3          	sb	zero,1(a5)
    800076ac:	00e781a3          	sb	a4,3(a5)
    800076b0:	00700693          	li	a3,7
    800076b4:	00d78123          	sb	a3,2(a5)
    800076b8:	00e780a3          	sb	a4,1(a5)
    800076bc:	00813403          	ld	s0,8(sp)
    800076c0:	01010113          	addi	sp,sp,16
    800076c4:	00008067          	ret

00000000800076c8 <uartputc>:
    800076c8:	00004797          	auipc	a5,0x4
    800076cc:	2f07a783          	lw	a5,752(a5) # 8000b9b8 <panicked>
    800076d0:	00078463          	beqz	a5,800076d8 <uartputc+0x10>
    800076d4:	0000006f          	j	800076d4 <uartputc+0xc>
    800076d8:	fd010113          	addi	sp,sp,-48
    800076dc:	02813023          	sd	s0,32(sp)
    800076e0:	00913c23          	sd	s1,24(sp)
    800076e4:	01213823          	sd	s2,16(sp)
    800076e8:	01313423          	sd	s3,8(sp)
    800076ec:	02113423          	sd	ra,40(sp)
    800076f0:	03010413          	addi	s0,sp,48
    800076f4:	00004917          	auipc	s2,0x4
    800076f8:	2cc90913          	addi	s2,s2,716 # 8000b9c0 <uart_tx_r>
    800076fc:	00093783          	ld	a5,0(s2)
    80007700:	00004497          	auipc	s1,0x4
    80007704:	2c848493          	addi	s1,s1,712 # 8000b9c8 <uart_tx_w>
    80007708:	0004b703          	ld	a4,0(s1)
    8000770c:	02078693          	addi	a3,a5,32
    80007710:	00050993          	mv	s3,a0
    80007714:	02e69c63          	bne	a3,a4,8000774c <uartputc+0x84>
    80007718:	00001097          	auipc	ra,0x1
    8000771c:	834080e7          	jalr	-1996(ra) # 80007f4c <push_on>
    80007720:	00093783          	ld	a5,0(s2)
    80007724:	0004b703          	ld	a4,0(s1)
    80007728:	02078793          	addi	a5,a5,32
    8000772c:	00e79463          	bne	a5,a4,80007734 <uartputc+0x6c>
    80007730:	0000006f          	j	80007730 <uartputc+0x68>
    80007734:	00001097          	auipc	ra,0x1
    80007738:	88c080e7          	jalr	-1908(ra) # 80007fc0 <pop_on>
    8000773c:	00093783          	ld	a5,0(s2)
    80007740:	0004b703          	ld	a4,0(s1)
    80007744:	02078693          	addi	a3,a5,32
    80007748:	fce688e3          	beq	a3,a4,80007718 <uartputc+0x50>
    8000774c:	01f77693          	andi	a3,a4,31
    80007750:	00009597          	auipc	a1,0x9
    80007754:	5b058593          	addi	a1,a1,1456 # 80010d00 <uart_tx_buf>
    80007758:	00d586b3          	add	a3,a1,a3
    8000775c:	00170713          	addi	a4,a4,1
    80007760:	01368023          	sb	s3,0(a3)
    80007764:	00e4b023          	sd	a4,0(s1)
    80007768:	10000637          	lui	a2,0x10000
    8000776c:	02f71063          	bne	a4,a5,8000778c <uartputc+0xc4>
    80007770:	0340006f          	j	800077a4 <uartputc+0xdc>
    80007774:	00074703          	lbu	a4,0(a4)
    80007778:	00f93023          	sd	a5,0(s2)
    8000777c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007780:	00093783          	ld	a5,0(s2)
    80007784:	0004b703          	ld	a4,0(s1)
    80007788:	00f70e63          	beq	a4,a5,800077a4 <uartputc+0xdc>
    8000778c:	00564683          	lbu	a3,5(a2)
    80007790:	01f7f713          	andi	a4,a5,31
    80007794:	00e58733          	add	a4,a1,a4
    80007798:	0206f693          	andi	a3,a3,32
    8000779c:	00178793          	addi	a5,a5,1
    800077a0:	fc069ae3          	bnez	a3,80007774 <uartputc+0xac>
    800077a4:	02813083          	ld	ra,40(sp)
    800077a8:	02013403          	ld	s0,32(sp)
    800077ac:	01813483          	ld	s1,24(sp)
    800077b0:	01013903          	ld	s2,16(sp)
    800077b4:	00813983          	ld	s3,8(sp)
    800077b8:	03010113          	addi	sp,sp,48
    800077bc:	00008067          	ret

00000000800077c0 <uartputc_sync>:
    800077c0:	ff010113          	addi	sp,sp,-16
    800077c4:	00813423          	sd	s0,8(sp)
    800077c8:	01010413          	addi	s0,sp,16
    800077cc:	00004717          	auipc	a4,0x4
    800077d0:	1ec72703          	lw	a4,492(a4) # 8000b9b8 <panicked>
    800077d4:	02071663          	bnez	a4,80007800 <uartputc_sync+0x40>
    800077d8:	00050793          	mv	a5,a0
    800077dc:	100006b7          	lui	a3,0x10000
    800077e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800077e4:	02077713          	andi	a4,a4,32
    800077e8:	fe070ce3          	beqz	a4,800077e0 <uartputc_sync+0x20>
    800077ec:	0ff7f793          	andi	a5,a5,255
    800077f0:	00f68023          	sb	a5,0(a3)
    800077f4:	00813403          	ld	s0,8(sp)
    800077f8:	01010113          	addi	sp,sp,16
    800077fc:	00008067          	ret
    80007800:	0000006f          	j	80007800 <uartputc_sync+0x40>

0000000080007804 <uartstart>:
    80007804:	ff010113          	addi	sp,sp,-16
    80007808:	00813423          	sd	s0,8(sp)
    8000780c:	01010413          	addi	s0,sp,16
    80007810:	00004617          	auipc	a2,0x4
    80007814:	1b060613          	addi	a2,a2,432 # 8000b9c0 <uart_tx_r>
    80007818:	00004517          	auipc	a0,0x4
    8000781c:	1b050513          	addi	a0,a0,432 # 8000b9c8 <uart_tx_w>
    80007820:	00063783          	ld	a5,0(a2)
    80007824:	00053703          	ld	a4,0(a0)
    80007828:	04f70263          	beq	a4,a5,8000786c <uartstart+0x68>
    8000782c:	100005b7          	lui	a1,0x10000
    80007830:	00009817          	auipc	a6,0x9
    80007834:	4d080813          	addi	a6,a6,1232 # 80010d00 <uart_tx_buf>
    80007838:	01c0006f          	j	80007854 <uartstart+0x50>
    8000783c:	0006c703          	lbu	a4,0(a3)
    80007840:	00f63023          	sd	a5,0(a2)
    80007844:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007848:	00063783          	ld	a5,0(a2)
    8000784c:	00053703          	ld	a4,0(a0)
    80007850:	00f70e63          	beq	a4,a5,8000786c <uartstart+0x68>
    80007854:	01f7f713          	andi	a4,a5,31
    80007858:	00e806b3          	add	a3,a6,a4
    8000785c:	0055c703          	lbu	a4,5(a1)
    80007860:	00178793          	addi	a5,a5,1
    80007864:	02077713          	andi	a4,a4,32
    80007868:	fc071ae3          	bnez	a4,8000783c <uartstart+0x38>
    8000786c:	00813403          	ld	s0,8(sp)
    80007870:	01010113          	addi	sp,sp,16
    80007874:	00008067          	ret

0000000080007878 <uartgetc>:
    80007878:	ff010113          	addi	sp,sp,-16
    8000787c:	00813423          	sd	s0,8(sp)
    80007880:	01010413          	addi	s0,sp,16
    80007884:	10000737          	lui	a4,0x10000
    80007888:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000788c:	0017f793          	andi	a5,a5,1
    80007890:	00078c63          	beqz	a5,800078a8 <uartgetc+0x30>
    80007894:	00074503          	lbu	a0,0(a4)
    80007898:	0ff57513          	andi	a0,a0,255
    8000789c:	00813403          	ld	s0,8(sp)
    800078a0:	01010113          	addi	sp,sp,16
    800078a4:	00008067          	ret
    800078a8:	fff00513          	li	a0,-1
    800078ac:	ff1ff06f          	j	8000789c <uartgetc+0x24>

00000000800078b0 <uartintr>:
    800078b0:	100007b7          	lui	a5,0x10000
    800078b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800078b8:	0017f793          	andi	a5,a5,1
    800078bc:	0a078463          	beqz	a5,80007964 <uartintr+0xb4>
    800078c0:	fe010113          	addi	sp,sp,-32
    800078c4:	00813823          	sd	s0,16(sp)
    800078c8:	00913423          	sd	s1,8(sp)
    800078cc:	00113c23          	sd	ra,24(sp)
    800078d0:	02010413          	addi	s0,sp,32
    800078d4:	100004b7          	lui	s1,0x10000
    800078d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800078dc:	0ff57513          	andi	a0,a0,255
    800078e0:	fffff097          	auipc	ra,0xfffff
    800078e4:	534080e7          	jalr	1332(ra) # 80006e14 <consoleintr>
    800078e8:	0054c783          	lbu	a5,5(s1)
    800078ec:	0017f793          	andi	a5,a5,1
    800078f0:	fe0794e3          	bnez	a5,800078d8 <uartintr+0x28>
    800078f4:	00004617          	auipc	a2,0x4
    800078f8:	0cc60613          	addi	a2,a2,204 # 8000b9c0 <uart_tx_r>
    800078fc:	00004517          	auipc	a0,0x4
    80007900:	0cc50513          	addi	a0,a0,204 # 8000b9c8 <uart_tx_w>
    80007904:	00063783          	ld	a5,0(a2)
    80007908:	00053703          	ld	a4,0(a0)
    8000790c:	04f70263          	beq	a4,a5,80007950 <uartintr+0xa0>
    80007910:	100005b7          	lui	a1,0x10000
    80007914:	00009817          	auipc	a6,0x9
    80007918:	3ec80813          	addi	a6,a6,1004 # 80010d00 <uart_tx_buf>
    8000791c:	01c0006f          	j	80007938 <uartintr+0x88>
    80007920:	0006c703          	lbu	a4,0(a3)
    80007924:	00f63023          	sd	a5,0(a2)
    80007928:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000792c:	00063783          	ld	a5,0(a2)
    80007930:	00053703          	ld	a4,0(a0)
    80007934:	00f70e63          	beq	a4,a5,80007950 <uartintr+0xa0>
    80007938:	01f7f713          	andi	a4,a5,31
    8000793c:	00e806b3          	add	a3,a6,a4
    80007940:	0055c703          	lbu	a4,5(a1)
    80007944:	00178793          	addi	a5,a5,1
    80007948:	02077713          	andi	a4,a4,32
    8000794c:	fc071ae3          	bnez	a4,80007920 <uartintr+0x70>
    80007950:	01813083          	ld	ra,24(sp)
    80007954:	01013403          	ld	s0,16(sp)
    80007958:	00813483          	ld	s1,8(sp)
    8000795c:	02010113          	addi	sp,sp,32
    80007960:	00008067          	ret
    80007964:	00004617          	auipc	a2,0x4
    80007968:	05c60613          	addi	a2,a2,92 # 8000b9c0 <uart_tx_r>
    8000796c:	00004517          	auipc	a0,0x4
    80007970:	05c50513          	addi	a0,a0,92 # 8000b9c8 <uart_tx_w>
    80007974:	00063783          	ld	a5,0(a2)
    80007978:	00053703          	ld	a4,0(a0)
    8000797c:	04f70263          	beq	a4,a5,800079c0 <uartintr+0x110>
    80007980:	100005b7          	lui	a1,0x10000
    80007984:	00009817          	auipc	a6,0x9
    80007988:	37c80813          	addi	a6,a6,892 # 80010d00 <uart_tx_buf>
    8000798c:	01c0006f          	j	800079a8 <uartintr+0xf8>
    80007990:	0006c703          	lbu	a4,0(a3)
    80007994:	00f63023          	sd	a5,0(a2)
    80007998:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000799c:	00063783          	ld	a5,0(a2)
    800079a0:	00053703          	ld	a4,0(a0)
    800079a4:	02f70063          	beq	a4,a5,800079c4 <uartintr+0x114>
    800079a8:	01f7f713          	andi	a4,a5,31
    800079ac:	00e806b3          	add	a3,a6,a4
    800079b0:	0055c703          	lbu	a4,5(a1)
    800079b4:	00178793          	addi	a5,a5,1
    800079b8:	02077713          	andi	a4,a4,32
    800079bc:	fc071ae3          	bnez	a4,80007990 <uartintr+0xe0>
    800079c0:	00008067          	ret
    800079c4:	00008067          	ret

00000000800079c8 <kinit>:
    800079c8:	fc010113          	addi	sp,sp,-64
    800079cc:	02913423          	sd	s1,40(sp)
    800079d0:	fffff7b7          	lui	a5,0xfffff
    800079d4:	0000a497          	auipc	s1,0xa
    800079d8:	34b48493          	addi	s1,s1,843 # 80011d1f <end+0xfff>
    800079dc:	02813823          	sd	s0,48(sp)
    800079e0:	01313c23          	sd	s3,24(sp)
    800079e4:	00f4f4b3          	and	s1,s1,a5
    800079e8:	02113c23          	sd	ra,56(sp)
    800079ec:	03213023          	sd	s2,32(sp)
    800079f0:	01413823          	sd	s4,16(sp)
    800079f4:	01513423          	sd	s5,8(sp)
    800079f8:	04010413          	addi	s0,sp,64
    800079fc:	000017b7          	lui	a5,0x1
    80007a00:	01100993          	li	s3,17
    80007a04:	00f487b3          	add	a5,s1,a5
    80007a08:	01b99993          	slli	s3,s3,0x1b
    80007a0c:	06f9e063          	bltu	s3,a5,80007a6c <kinit+0xa4>
    80007a10:	00009a97          	auipc	s5,0x9
    80007a14:	310a8a93          	addi	s5,s5,784 # 80010d20 <end>
    80007a18:	0754ec63          	bltu	s1,s5,80007a90 <kinit+0xc8>
    80007a1c:	0734fa63          	bgeu	s1,s3,80007a90 <kinit+0xc8>
    80007a20:	00088a37          	lui	s4,0x88
    80007a24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007a28:	00004917          	auipc	s2,0x4
    80007a2c:	fa890913          	addi	s2,s2,-88 # 8000b9d0 <kmem>
    80007a30:	00ca1a13          	slli	s4,s4,0xc
    80007a34:	0140006f          	j	80007a48 <kinit+0x80>
    80007a38:	000017b7          	lui	a5,0x1
    80007a3c:	00f484b3          	add	s1,s1,a5
    80007a40:	0554e863          	bltu	s1,s5,80007a90 <kinit+0xc8>
    80007a44:	0534f663          	bgeu	s1,s3,80007a90 <kinit+0xc8>
    80007a48:	00001637          	lui	a2,0x1
    80007a4c:	00100593          	li	a1,1
    80007a50:	00048513          	mv	a0,s1
    80007a54:	00000097          	auipc	ra,0x0
    80007a58:	5e4080e7          	jalr	1508(ra) # 80008038 <__memset>
    80007a5c:	00093783          	ld	a5,0(s2)
    80007a60:	00f4b023          	sd	a5,0(s1)
    80007a64:	00993023          	sd	s1,0(s2)
    80007a68:	fd4498e3          	bne	s1,s4,80007a38 <kinit+0x70>
    80007a6c:	03813083          	ld	ra,56(sp)
    80007a70:	03013403          	ld	s0,48(sp)
    80007a74:	02813483          	ld	s1,40(sp)
    80007a78:	02013903          	ld	s2,32(sp)
    80007a7c:	01813983          	ld	s3,24(sp)
    80007a80:	01013a03          	ld	s4,16(sp)
    80007a84:	00813a83          	ld	s5,8(sp)
    80007a88:	04010113          	addi	sp,sp,64
    80007a8c:	00008067          	ret
    80007a90:	00002517          	auipc	a0,0x2
    80007a94:	bd850513          	addi	a0,a0,-1064 # 80009668 <digits+0x18>
    80007a98:	fffff097          	auipc	ra,0xfffff
    80007a9c:	4b4080e7          	jalr	1204(ra) # 80006f4c <panic>

0000000080007aa0 <freerange>:
    80007aa0:	fc010113          	addi	sp,sp,-64
    80007aa4:	000017b7          	lui	a5,0x1
    80007aa8:	02913423          	sd	s1,40(sp)
    80007aac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ab0:	009504b3          	add	s1,a0,s1
    80007ab4:	fffff537          	lui	a0,0xfffff
    80007ab8:	02813823          	sd	s0,48(sp)
    80007abc:	02113c23          	sd	ra,56(sp)
    80007ac0:	03213023          	sd	s2,32(sp)
    80007ac4:	01313c23          	sd	s3,24(sp)
    80007ac8:	01413823          	sd	s4,16(sp)
    80007acc:	01513423          	sd	s5,8(sp)
    80007ad0:	01613023          	sd	s6,0(sp)
    80007ad4:	04010413          	addi	s0,sp,64
    80007ad8:	00a4f4b3          	and	s1,s1,a0
    80007adc:	00f487b3          	add	a5,s1,a5
    80007ae0:	06f5e463          	bltu	a1,a5,80007b48 <freerange+0xa8>
    80007ae4:	00009a97          	auipc	s5,0x9
    80007ae8:	23ca8a93          	addi	s5,s5,572 # 80010d20 <end>
    80007aec:	0954e263          	bltu	s1,s5,80007b70 <freerange+0xd0>
    80007af0:	01100993          	li	s3,17
    80007af4:	01b99993          	slli	s3,s3,0x1b
    80007af8:	0734fc63          	bgeu	s1,s3,80007b70 <freerange+0xd0>
    80007afc:	00058a13          	mv	s4,a1
    80007b00:	00004917          	auipc	s2,0x4
    80007b04:	ed090913          	addi	s2,s2,-304 # 8000b9d0 <kmem>
    80007b08:	00002b37          	lui	s6,0x2
    80007b0c:	0140006f          	j	80007b20 <freerange+0x80>
    80007b10:	000017b7          	lui	a5,0x1
    80007b14:	00f484b3          	add	s1,s1,a5
    80007b18:	0554ec63          	bltu	s1,s5,80007b70 <freerange+0xd0>
    80007b1c:	0534fa63          	bgeu	s1,s3,80007b70 <freerange+0xd0>
    80007b20:	00001637          	lui	a2,0x1
    80007b24:	00100593          	li	a1,1
    80007b28:	00048513          	mv	a0,s1
    80007b2c:	00000097          	auipc	ra,0x0
    80007b30:	50c080e7          	jalr	1292(ra) # 80008038 <__memset>
    80007b34:	00093703          	ld	a4,0(s2)
    80007b38:	016487b3          	add	a5,s1,s6
    80007b3c:	00e4b023          	sd	a4,0(s1)
    80007b40:	00993023          	sd	s1,0(s2)
    80007b44:	fcfa76e3          	bgeu	s4,a5,80007b10 <freerange+0x70>
    80007b48:	03813083          	ld	ra,56(sp)
    80007b4c:	03013403          	ld	s0,48(sp)
    80007b50:	02813483          	ld	s1,40(sp)
    80007b54:	02013903          	ld	s2,32(sp)
    80007b58:	01813983          	ld	s3,24(sp)
    80007b5c:	01013a03          	ld	s4,16(sp)
    80007b60:	00813a83          	ld	s5,8(sp)
    80007b64:	00013b03          	ld	s6,0(sp)
    80007b68:	04010113          	addi	sp,sp,64
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	af850513          	addi	a0,a0,-1288 # 80009668 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	3d4080e7          	jalr	980(ra) # 80006f4c <panic>

0000000080007b80 <kfree>:
    80007b80:	fe010113          	addi	sp,sp,-32
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00113c23          	sd	ra,24(sp)
    80007b8c:	00913423          	sd	s1,8(sp)
    80007b90:	02010413          	addi	s0,sp,32
    80007b94:	03451793          	slli	a5,a0,0x34
    80007b98:	04079c63          	bnez	a5,80007bf0 <kfree+0x70>
    80007b9c:	00009797          	auipc	a5,0x9
    80007ba0:	18478793          	addi	a5,a5,388 # 80010d20 <end>
    80007ba4:	00050493          	mv	s1,a0
    80007ba8:	04f56463          	bltu	a0,a5,80007bf0 <kfree+0x70>
    80007bac:	01100793          	li	a5,17
    80007bb0:	01b79793          	slli	a5,a5,0x1b
    80007bb4:	02f57e63          	bgeu	a0,a5,80007bf0 <kfree+0x70>
    80007bb8:	00001637          	lui	a2,0x1
    80007bbc:	00100593          	li	a1,1
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	478080e7          	jalr	1144(ra) # 80008038 <__memset>
    80007bc8:	00004797          	auipc	a5,0x4
    80007bcc:	e0878793          	addi	a5,a5,-504 # 8000b9d0 <kmem>
    80007bd0:	0007b703          	ld	a4,0(a5)
    80007bd4:	01813083          	ld	ra,24(sp)
    80007bd8:	01013403          	ld	s0,16(sp)
    80007bdc:	00e4b023          	sd	a4,0(s1)
    80007be0:	0097b023          	sd	s1,0(a5)
    80007be4:	00813483          	ld	s1,8(sp)
    80007be8:	02010113          	addi	sp,sp,32
    80007bec:	00008067          	ret
    80007bf0:	00002517          	auipc	a0,0x2
    80007bf4:	a7850513          	addi	a0,a0,-1416 # 80009668 <digits+0x18>
    80007bf8:	fffff097          	auipc	ra,0xfffff
    80007bfc:	354080e7          	jalr	852(ra) # 80006f4c <panic>

0000000080007c00 <kalloc>:
    80007c00:	fe010113          	addi	sp,sp,-32
    80007c04:	00813823          	sd	s0,16(sp)
    80007c08:	00913423          	sd	s1,8(sp)
    80007c0c:	00113c23          	sd	ra,24(sp)
    80007c10:	02010413          	addi	s0,sp,32
    80007c14:	00004797          	auipc	a5,0x4
    80007c18:	dbc78793          	addi	a5,a5,-580 # 8000b9d0 <kmem>
    80007c1c:	0007b483          	ld	s1,0(a5)
    80007c20:	02048063          	beqz	s1,80007c40 <kalloc+0x40>
    80007c24:	0004b703          	ld	a4,0(s1)
    80007c28:	00001637          	lui	a2,0x1
    80007c2c:	00500593          	li	a1,5
    80007c30:	00048513          	mv	a0,s1
    80007c34:	00e7b023          	sd	a4,0(a5)
    80007c38:	00000097          	auipc	ra,0x0
    80007c3c:	400080e7          	jalr	1024(ra) # 80008038 <__memset>
    80007c40:	01813083          	ld	ra,24(sp)
    80007c44:	01013403          	ld	s0,16(sp)
    80007c48:	00048513          	mv	a0,s1
    80007c4c:	00813483          	ld	s1,8(sp)
    80007c50:	02010113          	addi	sp,sp,32
    80007c54:	00008067          	ret

0000000080007c58 <initlock>:
    80007c58:	ff010113          	addi	sp,sp,-16
    80007c5c:	00813423          	sd	s0,8(sp)
    80007c60:	01010413          	addi	s0,sp,16
    80007c64:	00813403          	ld	s0,8(sp)
    80007c68:	00b53423          	sd	a1,8(a0)
    80007c6c:	00052023          	sw	zero,0(a0)
    80007c70:	00053823          	sd	zero,16(a0)
    80007c74:	01010113          	addi	sp,sp,16
    80007c78:	00008067          	ret

0000000080007c7c <acquire>:
    80007c7c:	fe010113          	addi	sp,sp,-32
    80007c80:	00813823          	sd	s0,16(sp)
    80007c84:	00913423          	sd	s1,8(sp)
    80007c88:	00113c23          	sd	ra,24(sp)
    80007c8c:	01213023          	sd	s2,0(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	00050493          	mv	s1,a0
    80007c98:	10002973          	csrr	s2,sstatus
    80007c9c:	100027f3          	csrr	a5,sstatus
    80007ca0:	ffd7f793          	andi	a5,a5,-3
    80007ca4:	10079073          	csrw	sstatus,a5
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	8e0080e7          	jalr	-1824(ra) # 80006588 <mycpu>
    80007cb0:	07852783          	lw	a5,120(a0)
    80007cb4:	06078e63          	beqz	a5,80007d30 <acquire+0xb4>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	8d0080e7          	jalr	-1840(ra) # 80006588 <mycpu>
    80007cc0:	07852783          	lw	a5,120(a0)
    80007cc4:	0004a703          	lw	a4,0(s1)
    80007cc8:	0017879b          	addiw	a5,a5,1
    80007ccc:	06f52c23          	sw	a5,120(a0)
    80007cd0:	04071063          	bnez	a4,80007d10 <acquire+0x94>
    80007cd4:	00100713          	li	a4,1
    80007cd8:	00070793          	mv	a5,a4
    80007cdc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ce0:	0007879b          	sext.w	a5,a5
    80007ce4:	fe079ae3          	bnez	a5,80007cd8 <acquire+0x5c>
    80007ce8:	0ff0000f          	fence
    80007cec:	fffff097          	auipc	ra,0xfffff
    80007cf0:	89c080e7          	jalr	-1892(ra) # 80006588 <mycpu>
    80007cf4:	01813083          	ld	ra,24(sp)
    80007cf8:	01013403          	ld	s0,16(sp)
    80007cfc:	00a4b823          	sd	a0,16(s1)
    80007d00:	00013903          	ld	s2,0(sp)
    80007d04:	00813483          	ld	s1,8(sp)
    80007d08:	02010113          	addi	sp,sp,32
    80007d0c:	00008067          	ret
    80007d10:	0104b903          	ld	s2,16(s1)
    80007d14:	fffff097          	auipc	ra,0xfffff
    80007d18:	874080e7          	jalr	-1932(ra) # 80006588 <mycpu>
    80007d1c:	faa91ce3          	bne	s2,a0,80007cd4 <acquire+0x58>
    80007d20:	00002517          	auipc	a0,0x2
    80007d24:	95050513          	addi	a0,a0,-1712 # 80009670 <digits+0x20>
    80007d28:	fffff097          	auipc	ra,0xfffff
    80007d2c:	224080e7          	jalr	548(ra) # 80006f4c <panic>
    80007d30:	00195913          	srli	s2,s2,0x1
    80007d34:	fffff097          	auipc	ra,0xfffff
    80007d38:	854080e7          	jalr	-1964(ra) # 80006588 <mycpu>
    80007d3c:	00197913          	andi	s2,s2,1
    80007d40:	07252e23          	sw	s2,124(a0)
    80007d44:	f75ff06f          	j	80007cb8 <acquire+0x3c>

0000000080007d48 <release>:
    80007d48:	fe010113          	addi	sp,sp,-32
    80007d4c:	00813823          	sd	s0,16(sp)
    80007d50:	00113c23          	sd	ra,24(sp)
    80007d54:	00913423          	sd	s1,8(sp)
    80007d58:	01213023          	sd	s2,0(sp)
    80007d5c:	02010413          	addi	s0,sp,32
    80007d60:	00052783          	lw	a5,0(a0)
    80007d64:	00079a63          	bnez	a5,80007d78 <release+0x30>
    80007d68:	00002517          	auipc	a0,0x2
    80007d6c:	91050513          	addi	a0,a0,-1776 # 80009678 <digits+0x28>
    80007d70:	fffff097          	auipc	ra,0xfffff
    80007d74:	1dc080e7          	jalr	476(ra) # 80006f4c <panic>
    80007d78:	01053903          	ld	s2,16(a0)
    80007d7c:	00050493          	mv	s1,a0
    80007d80:	fffff097          	auipc	ra,0xfffff
    80007d84:	808080e7          	jalr	-2040(ra) # 80006588 <mycpu>
    80007d88:	fea910e3          	bne	s2,a0,80007d68 <release+0x20>
    80007d8c:	0004b823          	sd	zero,16(s1)
    80007d90:	0ff0000f          	fence
    80007d94:	0f50000f          	fence	iorw,ow
    80007d98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d9c:	ffffe097          	auipc	ra,0xffffe
    80007da0:	7ec080e7          	jalr	2028(ra) # 80006588 <mycpu>
    80007da4:	100027f3          	csrr	a5,sstatus
    80007da8:	0027f793          	andi	a5,a5,2
    80007dac:	04079a63          	bnez	a5,80007e00 <release+0xb8>
    80007db0:	07852783          	lw	a5,120(a0)
    80007db4:	02f05e63          	blez	a5,80007df0 <release+0xa8>
    80007db8:	fff7871b          	addiw	a4,a5,-1
    80007dbc:	06e52c23          	sw	a4,120(a0)
    80007dc0:	00071c63          	bnez	a4,80007dd8 <release+0x90>
    80007dc4:	07c52783          	lw	a5,124(a0)
    80007dc8:	00078863          	beqz	a5,80007dd8 <release+0x90>
    80007dcc:	100027f3          	csrr	a5,sstatus
    80007dd0:	0027e793          	ori	a5,a5,2
    80007dd4:	10079073          	csrw	sstatus,a5
    80007dd8:	01813083          	ld	ra,24(sp)
    80007ddc:	01013403          	ld	s0,16(sp)
    80007de0:	00813483          	ld	s1,8(sp)
    80007de4:	00013903          	ld	s2,0(sp)
    80007de8:	02010113          	addi	sp,sp,32
    80007dec:	00008067          	ret
    80007df0:	00002517          	auipc	a0,0x2
    80007df4:	8a850513          	addi	a0,a0,-1880 # 80009698 <digits+0x48>
    80007df8:	fffff097          	auipc	ra,0xfffff
    80007dfc:	154080e7          	jalr	340(ra) # 80006f4c <panic>
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	88050513          	addi	a0,a0,-1920 # 80009680 <digits+0x30>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	144080e7          	jalr	324(ra) # 80006f4c <panic>

0000000080007e10 <holding>:
    80007e10:	00052783          	lw	a5,0(a0)
    80007e14:	00079663          	bnez	a5,80007e20 <holding+0x10>
    80007e18:	00000513          	li	a0,0
    80007e1c:	00008067          	ret
    80007e20:	fe010113          	addi	sp,sp,-32
    80007e24:	00813823          	sd	s0,16(sp)
    80007e28:	00913423          	sd	s1,8(sp)
    80007e2c:	00113c23          	sd	ra,24(sp)
    80007e30:	02010413          	addi	s0,sp,32
    80007e34:	01053483          	ld	s1,16(a0)
    80007e38:	ffffe097          	auipc	ra,0xffffe
    80007e3c:	750080e7          	jalr	1872(ra) # 80006588 <mycpu>
    80007e40:	01813083          	ld	ra,24(sp)
    80007e44:	01013403          	ld	s0,16(sp)
    80007e48:	40a48533          	sub	a0,s1,a0
    80007e4c:	00153513          	seqz	a0,a0
    80007e50:	00813483          	ld	s1,8(sp)
    80007e54:	02010113          	addi	sp,sp,32
    80007e58:	00008067          	ret

0000000080007e5c <push_off>:
    80007e5c:	fe010113          	addi	sp,sp,-32
    80007e60:	00813823          	sd	s0,16(sp)
    80007e64:	00113c23          	sd	ra,24(sp)
    80007e68:	00913423          	sd	s1,8(sp)
    80007e6c:	02010413          	addi	s0,sp,32
    80007e70:	100024f3          	csrr	s1,sstatus
    80007e74:	100027f3          	csrr	a5,sstatus
    80007e78:	ffd7f793          	andi	a5,a5,-3
    80007e7c:	10079073          	csrw	sstatus,a5
    80007e80:	ffffe097          	auipc	ra,0xffffe
    80007e84:	708080e7          	jalr	1800(ra) # 80006588 <mycpu>
    80007e88:	07852783          	lw	a5,120(a0)
    80007e8c:	02078663          	beqz	a5,80007eb8 <push_off+0x5c>
    80007e90:	ffffe097          	auipc	ra,0xffffe
    80007e94:	6f8080e7          	jalr	1784(ra) # 80006588 <mycpu>
    80007e98:	07852783          	lw	a5,120(a0)
    80007e9c:	01813083          	ld	ra,24(sp)
    80007ea0:	01013403          	ld	s0,16(sp)
    80007ea4:	0017879b          	addiw	a5,a5,1
    80007ea8:	06f52c23          	sw	a5,120(a0)
    80007eac:	00813483          	ld	s1,8(sp)
    80007eb0:	02010113          	addi	sp,sp,32
    80007eb4:	00008067          	ret
    80007eb8:	0014d493          	srli	s1,s1,0x1
    80007ebc:	ffffe097          	auipc	ra,0xffffe
    80007ec0:	6cc080e7          	jalr	1740(ra) # 80006588 <mycpu>
    80007ec4:	0014f493          	andi	s1,s1,1
    80007ec8:	06952e23          	sw	s1,124(a0)
    80007ecc:	fc5ff06f          	j	80007e90 <push_off+0x34>

0000000080007ed0 <pop_off>:
    80007ed0:	ff010113          	addi	sp,sp,-16
    80007ed4:	00813023          	sd	s0,0(sp)
    80007ed8:	00113423          	sd	ra,8(sp)
    80007edc:	01010413          	addi	s0,sp,16
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	6a8080e7          	jalr	1704(ra) # 80006588 <mycpu>
    80007ee8:	100027f3          	csrr	a5,sstatus
    80007eec:	0027f793          	andi	a5,a5,2
    80007ef0:	04079663          	bnez	a5,80007f3c <pop_off+0x6c>
    80007ef4:	07852783          	lw	a5,120(a0)
    80007ef8:	02f05a63          	blez	a5,80007f2c <pop_off+0x5c>
    80007efc:	fff7871b          	addiw	a4,a5,-1
    80007f00:	06e52c23          	sw	a4,120(a0)
    80007f04:	00071c63          	bnez	a4,80007f1c <pop_off+0x4c>
    80007f08:	07c52783          	lw	a5,124(a0)
    80007f0c:	00078863          	beqz	a5,80007f1c <pop_off+0x4c>
    80007f10:	100027f3          	csrr	a5,sstatus
    80007f14:	0027e793          	ori	a5,a5,2
    80007f18:	10079073          	csrw	sstatus,a5
    80007f1c:	00813083          	ld	ra,8(sp)
    80007f20:	00013403          	ld	s0,0(sp)
    80007f24:	01010113          	addi	sp,sp,16
    80007f28:	00008067          	ret
    80007f2c:	00001517          	auipc	a0,0x1
    80007f30:	76c50513          	addi	a0,a0,1900 # 80009698 <digits+0x48>
    80007f34:	fffff097          	auipc	ra,0xfffff
    80007f38:	018080e7          	jalr	24(ra) # 80006f4c <panic>
    80007f3c:	00001517          	auipc	a0,0x1
    80007f40:	74450513          	addi	a0,a0,1860 # 80009680 <digits+0x30>
    80007f44:	fffff097          	auipc	ra,0xfffff
    80007f48:	008080e7          	jalr	8(ra) # 80006f4c <panic>

0000000080007f4c <push_on>:
    80007f4c:	fe010113          	addi	sp,sp,-32
    80007f50:	00813823          	sd	s0,16(sp)
    80007f54:	00113c23          	sd	ra,24(sp)
    80007f58:	00913423          	sd	s1,8(sp)
    80007f5c:	02010413          	addi	s0,sp,32
    80007f60:	100024f3          	csrr	s1,sstatus
    80007f64:	100027f3          	csrr	a5,sstatus
    80007f68:	0027e793          	ori	a5,a5,2
    80007f6c:	10079073          	csrw	sstatus,a5
    80007f70:	ffffe097          	auipc	ra,0xffffe
    80007f74:	618080e7          	jalr	1560(ra) # 80006588 <mycpu>
    80007f78:	07852783          	lw	a5,120(a0)
    80007f7c:	02078663          	beqz	a5,80007fa8 <push_on+0x5c>
    80007f80:	ffffe097          	auipc	ra,0xffffe
    80007f84:	608080e7          	jalr	1544(ra) # 80006588 <mycpu>
    80007f88:	07852783          	lw	a5,120(a0)
    80007f8c:	01813083          	ld	ra,24(sp)
    80007f90:	01013403          	ld	s0,16(sp)
    80007f94:	0017879b          	addiw	a5,a5,1
    80007f98:	06f52c23          	sw	a5,120(a0)
    80007f9c:	00813483          	ld	s1,8(sp)
    80007fa0:	02010113          	addi	sp,sp,32
    80007fa4:	00008067          	ret
    80007fa8:	0014d493          	srli	s1,s1,0x1
    80007fac:	ffffe097          	auipc	ra,0xffffe
    80007fb0:	5dc080e7          	jalr	1500(ra) # 80006588 <mycpu>
    80007fb4:	0014f493          	andi	s1,s1,1
    80007fb8:	06952e23          	sw	s1,124(a0)
    80007fbc:	fc5ff06f          	j	80007f80 <push_on+0x34>

0000000080007fc0 <pop_on>:
    80007fc0:	ff010113          	addi	sp,sp,-16
    80007fc4:	00813023          	sd	s0,0(sp)
    80007fc8:	00113423          	sd	ra,8(sp)
    80007fcc:	01010413          	addi	s0,sp,16
    80007fd0:	ffffe097          	auipc	ra,0xffffe
    80007fd4:	5b8080e7          	jalr	1464(ra) # 80006588 <mycpu>
    80007fd8:	100027f3          	csrr	a5,sstatus
    80007fdc:	0027f793          	andi	a5,a5,2
    80007fe0:	04078463          	beqz	a5,80008028 <pop_on+0x68>
    80007fe4:	07852783          	lw	a5,120(a0)
    80007fe8:	02f05863          	blez	a5,80008018 <pop_on+0x58>
    80007fec:	fff7879b          	addiw	a5,a5,-1
    80007ff0:	06f52c23          	sw	a5,120(a0)
    80007ff4:	07853783          	ld	a5,120(a0)
    80007ff8:	00079863          	bnez	a5,80008008 <pop_on+0x48>
    80007ffc:	100027f3          	csrr	a5,sstatus
    80008000:	ffd7f793          	andi	a5,a5,-3
    80008004:	10079073          	csrw	sstatus,a5
    80008008:	00813083          	ld	ra,8(sp)
    8000800c:	00013403          	ld	s0,0(sp)
    80008010:	01010113          	addi	sp,sp,16
    80008014:	00008067          	ret
    80008018:	00001517          	auipc	a0,0x1
    8000801c:	6a850513          	addi	a0,a0,1704 # 800096c0 <digits+0x70>
    80008020:	fffff097          	auipc	ra,0xfffff
    80008024:	f2c080e7          	jalr	-212(ra) # 80006f4c <panic>
    80008028:	00001517          	auipc	a0,0x1
    8000802c:	67850513          	addi	a0,a0,1656 # 800096a0 <digits+0x50>
    80008030:	fffff097          	auipc	ra,0xfffff
    80008034:	f1c080e7          	jalr	-228(ra) # 80006f4c <panic>

0000000080008038 <__memset>:
    80008038:	ff010113          	addi	sp,sp,-16
    8000803c:	00813423          	sd	s0,8(sp)
    80008040:	01010413          	addi	s0,sp,16
    80008044:	1a060e63          	beqz	a2,80008200 <__memset+0x1c8>
    80008048:	40a007b3          	neg	a5,a0
    8000804c:	0077f793          	andi	a5,a5,7
    80008050:	00778693          	addi	a3,a5,7
    80008054:	00b00813          	li	a6,11
    80008058:	0ff5f593          	andi	a1,a1,255
    8000805c:	fff6071b          	addiw	a4,a2,-1
    80008060:	1b06e663          	bltu	a3,a6,8000820c <__memset+0x1d4>
    80008064:	1cd76463          	bltu	a4,a3,8000822c <__memset+0x1f4>
    80008068:	1a078e63          	beqz	a5,80008224 <__memset+0x1ec>
    8000806c:	00b50023          	sb	a1,0(a0)
    80008070:	00100713          	li	a4,1
    80008074:	1ae78463          	beq	a5,a4,8000821c <__memset+0x1e4>
    80008078:	00b500a3          	sb	a1,1(a0)
    8000807c:	00200713          	li	a4,2
    80008080:	1ae78a63          	beq	a5,a4,80008234 <__memset+0x1fc>
    80008084:	00b50123          	sb	a1,2(a0)
    80008088:	00300713          	li	a4,3
    8000808c:	18e78463          	beq	a5,a4,80008214 <__memset+0x1dc>
    80008090:	00b501a3          	sb	a1,3(a0)
    80008094:	00400713          	li	a4,4
    80008098:	1ae78263          	beq	a5,a4,8000823c <__memset+0x204>
    8000809c:	00b50223          	sb	a1,4(a0)
    800080a0:	00500713          	li	a4,5
    800080a4:	1ae78063          	beq	a5,a4,80008244 <__memset+0x20c>
    800080a8:	00b502a3          	sb	a1,5(a0)
    800080ac:	00700713          	li	a4,7
    800080b0:	18e79e63          	bne	a5,a4,8000824c <__memset+0x214>
    800080b4:	00b50323          	sb	a1,6(a0)
    800080b8:	00700e93          	li	t4,7
    800080bc:	00859713          	slli	a4,a1,0x8
    800080c0:	00e5e733          	or	a4,a1,a4
    800080c4:	01059e13          	slli	t3,a1,0x10
    800080c8:	01c76e33          	or	t3,a4,t3
    800080cc:	01859313          	slli	t1,a1,0x18
    800080d0:	006e6333          	or	t1,t3,t1
    800080d4:	02059893          	slli	a7,a1,0x20
    800080d8:	40f60e3b          	subw	t3,a2,a5
    800080dc:	011368b3          	or	a7,t1,a7
    800080e0:	02859813          	slli	a6,a1,0x28
    800080e4:	0108e833          	or	a6,a7,a6
    800080e8:	03059693          	slli	a3,a1,0x30
    800080ec:	003e589b          	srliw	a7,t3,0x3
    800080f0:	00d866b3          	or	a3,a6,a3
    800080f4:	03859713          	slli	a4,a1,0x38
    800080f8:	00389813          	slli	a6,a7,0x3
    800080fc:	00f507b3          	add	a5,a0,a5
    80008100:	00e6e733          	or	a4,a3,a4
    80008104:	000e089b          	sext.w	a7,t3
    80008108:	00f806b3          	add	a3,a6,a5
    8000810c:	00e7b023          	sd	a4,0(a5)
    80008110:	00878793          	addi	a5,a5,8
    80008114:	fed79ce3          	bne	a5,a3,8000810c <__memset+0xd4>
    80008118:	ff8e7793          	andi	a5,t3,-8
    8000811c:	0007871b          	sext.w	a4,a5
    80008120:	01d787bb          	addw	a5,a5,t4
    80008124:	0ce88e63          	beq	a7,a4,80008200 <__memset+0x1c8>
    80008128:	00f50733          	add	a4,a0,a5
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	0017871b          	addiw	a4,a5,1
    80008134:	0cc77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	0027871b          	addiw	a4,a5,2
    80008144:	0ac77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	0037871b          	addiw	a4,a5,3
    80008154:	0ac77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	0047871b          	addiw	a4,a5,4
    80008164:	08c77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008168:	00e50733          	add	a4,a0,a4
    8000816c:	00b70023          	sb	a1,0(a4)
    80008170:	0057871b          	addiw	a4,a5,5
    80008174:	08c77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008178:	00e50733          	add	a4,a0,a4
    8000817c:	00b70023          	sb	a1,0(a4)
    80008180:	0067871b          	addiw	a4,a5,6
    80008184:	06c77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008188:	00e50733          	add	a4,a0,a4
    8000818c:	00b70023          	sb	a1,0(a4)
    80008190:	0077871b          	addiw	a4,a5,7
    80008194:	06c77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    80008198:	00e50733          	add	a4,a0,a4
    8000819c:	00b70023          	sb	a1,0(a4)
    800081a0:	0087871b          	addiw	a4,a5,8
    800081a4:	04c77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    800081a8:	00e50733          	add	a4,a0,a4
    800081ac:	00b70023          	sb	a1,0(a4)
    800081b0:	0097871b          	addiw	a4,a5,9
    800081b4:	04c77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    800081b8:	00e50733          	add	a4,a0,a4
    800081bc:	00b70023          	sb	a1,0(a4)
    800081c0:	00a7871b          	addiw	a4,a5,10
    800081c4:	02c77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    800081c8:	00e50733          	add	a4,a0,a4
    800081cc:	00b70023          	sb	a1,0(a4)
    800081d0:	00b7871b          	addiw	a4,a5,11
    800081d4:	02c77663          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    800081d8:	00e50733          	add	a4,a0,a4
    800081dc:	00b70023          	sb	a1,0(a4)
    800081e0:	00c7871b          	addiw	a4,a5,12
    800081e4:	00c77e63          	bgeu	a4,a2,80008200 <__memset+0x1c8>
    800081e8:	00e50733          	add	a4,a0,a4
    800081ec:	00b70023          	sb	a1,0(a4)
    800081f0:	00d7879b          	addiw	a5,a5,13
    800081f4:	00c7f663          	bgeu	a5,a2,80008200 <__memset+0x1c8>
    800081f8:	00f507b3          	add	a5,a0,a5
    800081fc:	00b78023          	sb	a1,0(a5)
    80008200:	00813403          	ld	s0,8(sp)
    80008204:	01010113          	addi	sp,sp,16
    80008208:	00008067          	ret
    8000820c:	00b00693          	li	a3,11
    80008210:	e55ff06f          	j	80008064 <__memset+0x2c>
    80008214:	00300e93          	li	t4,3
    80008218:	ea5ff06f          	j	800080bc <__memset+0x84>
    8000821c:	00100e93          	li	t4,1
    80008220:	e9dff06f          	j	800080bc <__memset+0x84>
    80008224:	00000e93          	li	t4,0
    80008228:	e95ff06f          	j	800080bc <__memset+0x84>
    8000822c:	00000793          	li	a5,0
    80008230:	ef9ff06f          	j	80008128 <__memset+0xf0>
    80008234:	00200e93          	li	t4,2
    80008238:	e85ff06f          	j	800080bc <__memset+0x84>
    8000823c:	00400e93          	li	t4,4
    80008240:	e7dff06f          	j	800080bc <__memset+0x84>
    80008244:	00500e93          	li	t4,5
    80008248:	e75ff06f          	j	800080bc <__memset+0x84>
    8000824c:	00600e93          	li	t4,6
    80008250:	e6dff06f          	j	800080bc <__memset+0x84>

0000000080008254 <__memmove>:
    80008254:	ff010113          	addi	sp,sp,-16
    80008258:	00813423          	sd	s0,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	0e060863          	beqz	a2,80008350 <__memmove+0xfc>
    80008264:	fff6069b          	addiw	a3,a2,-1
    80008268:	0006881b          	sext.w	a6,a3
    8000826c:	0ea5e863          	bltu	a1,a0,8000835c <__memmove+0x108>
    80008270:	00758713          	addi	a4,a1,7
    80008274:	00a5e7b3          	or	a5,a1,a0
    80008278:	40a70733          	sub	a4,a4,a0
    8000827c:	0077f793          	andi	a5,a5,7
    80008280:	00f73713          	sltiu	a4,a4,15
    80008284:	00174713          	xori	a4,a4,1
    80008288:	0017b793          	seqz	a5,a5
    8000828c:	00e7f7b3          	and	a5,a5,a4
    80008290:	10078863          	beqz	a5,800083a0 <__memmove+0x14c>
    80008294:	00900793          	li	a5,9
    80008298:	1107f463          	bgeu	a5,a6,800083a0 <__memmove+0x14c>
    8000829c:	0036581b          	srliw	a6,a2,0x3
    800082a0:	fff8081b          	addiw	a6,a6,-1
    800082a4:	02081813          	slli	a6,a6,0x20
    800082a8:	01d85893          	srli	a7,a6,0x1d
    800082ac:	00858813          	addi	a6,a1,8
    800082b0:	00058793          	mv	a5,a1
    800082b4:	00050713          	mv	a4,a0
    800082b8:	01088833          	add	a6,a7,a6
    800082bc:	0007b883          	ld	a7,0(a5)
    800082c0:	00878793          	addi	a5,a5,8
    800082c4:	00870713          	addi	a4,a4,8
    800082c8:	ff173c23          	sd	a7,-8(a4)
    800082cc:	ff0798e3          	bne	a5,a6,800082bc <__memmove+0x68>
    800082d0:	ff867713          	andi	a4,a2,-8
    800082d4:	02071793          	slli	a5,a4,0x20
    800082d8:	0207d793          	srli	a5,a5,0x20
    800082dc:	00f585b3          	add	a1,a1,a5
    800082e0:	40e686bb          	subw	a3,a3,a4
    800082e4:	00f507b3          	add	a5,a0,a5
    800082e8:	06e60463          	beq	a2,a4,80008350 <__memmove+0xfc>
    800082ec:	0005c703          	lbu	a4,0(a1)
    800082f0:	00e78023          	sb	a4,0(a5)
    800082f4:	04068e63          	beqz	a3,80008350 <__memmove+0xfc>
    800082f8:	0015c603          	lbu	a2,1(a1)
    800082fc:	00100713          	li	a4,1
    80008300:	00c780a3          	sb	a2,1(a5)
    80008304:	04e68663          	beq	a3,a4,80008350 <__memmove+0xfc>
    80008308:	0025c603          	lbu	a2,2(a1)
    8000830c:	00200713          	li	a4,2
    80008310:	00c78123          	sb	a2,2(a5)
    80008314:	02e68e63          	beq	a3,a4,80008350 <__memmove+0xfc>
    80008318:	0035c603          	lbu	a2,3(a1)
    8000831c:	00300713          	li	a4,3
    80008320:	00c781a3          	sb	a2,3(a5)
    80008324:	02e68663          	beq	a3,a4,80008350 <__memmove+0xfc>
    80008328:	0045c603          	lbu	a2,4(a1)
    8000832c:	00400713          	li	a4,4
    80008330:	00c78223          	sb	a2,4(a5)
    80008334:	00e68e63          	beq	a3,a4,80008350 <__memmove+0xfc>
    80008338:	0055c603          	lbu	a2,5(a1)
    8000833c:	00500713          	li	a4,5
    80008340:	00c782a3          	sb	a2,5(a5)
    80008344:	00e68663          	beq	a3,a4,80008350 <__memmove+0xfc>
    80008348:	0065c703          	lbu	a4,6(a1)
    8000834c:	00e78323          	sb	a4,6(a5)
    80008350:	00813403          	ld	s0,8(sp)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret
    8000835c:	02061713          	slli	a4,a2,0x20
    80008360:	02075713          	srli	a4,a4,0x20
    80008364:	00e587b3          	add	a5,a1,a4
    80008368:	f0f574e3          	bgeu	a0,a5,80008270 <__memmove+0x1c>
    8000836c:	02069613          	slli	a2,a3,0x20
    80008370:	02065613          	srli	a2,a2,0x20
    80008374:	fff64613          	not	a2,a2
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00c78633          	add	a2,a5,a2
    80008380:	fff7c683          	lbu	a3,-1(a5)
    80008384:	fff78793          	addi	a5,a5,-1
    80008388:	fff70713          	addi	a4,a4,-1
    8000838c:	00d70023          	sb	a3,0(a4)
    80008390:	fec798e3          	bne	a5,a2,80008380 <__memmove+0x12c>
    80008394:	00813403          	ld	s0,8(sp)
    80008398:	01010113          	addi	sp,sp,16
    8000839c:	00008067          	ret
    800083a0:	02069713          	slli	a4,a3,0x20
    800083a4:	02075713          	srli	a4,a4,0x20
    800083a8:	00170713          	addi	a4,a4,1
    800083ac:	00e50733          	add	a4,a0,a4
    800083b0:	00050793          	mv	a5,a0
    800083b4:	0005c683          	lbu	a3,0(a1)
    800083b8:	00178793          	addi	a5,a5,1
    800083bc:	00158593          	addi	a1,a1,1
    800083c0:	fed78fa3          	sb	a3,-1(a5)
    800083c4:	fee798e3          	bne	a5,a4,800083b4 <__memmove+0x160>
    800083c8:	f89ff06f          	j	80008350 <__memmove+0xfc>
	...
